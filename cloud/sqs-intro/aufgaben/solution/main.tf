resource "aws_sqs_queue" "my_queue" {
  name                    = "terraform-example-queue"
  sqs_managed_sse_enabled = true
}

data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "lambda_iam_role" {
  name               = "lambda_sqs_iam_role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json

  managed_policy_arns = [
    "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
  ]

  inline_policy {
    name = "lambda_sqs_iam_policy"

    policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Action = [
            "sqs:*",
          ]
          Effect   = "Allow"
          Resource = aws_sqs_queue.my_queue.arn
        },
      ]
    })
  }
}

data "archive_file" "lambda" {
  type        = "zip"
  source_file = "index.mjs"
  output_path = "lambda_function_payload.zip"
}

resource "aws_lambda_function" "test_lambda" {
  # If the file is not in the current working directory you will need to include a
  # path.module in the filename.
  filename      = "lambda_function_payload.zip"
  function_name = "my_sqs_lambda_function"
  role          = aws_iam_role.lambda_iam_role.arn
  handler       = "index.handler"

  source_code_hash = data.archive_file.lambda.output_base64sha256

  runtime = "nodejs18.x"
}

resource "aws_lambda_event_source_mapping" "example" {
  event_source_arn = aws_sqs_queue.my_queue.arn
  function_name    = aws_lambda_function.test_lambda.function_name
}
