import json
import urllib3

API_URL = "https://api.coinstats.app/public/v1/markets?coinId=bitcoin"

http = urllib3.PoolManager()


def lambda_handler(event, context):
    # TODO implement
    response = http.request('GET', API_URL)
    data = json.loads(response.data.decode('utf-8'))

    binance = None

    for exchange in data:
        if exchange['exchange'] == 'Binance':
            binance = exchange
            break
    # print(binance)

    if binance is None:
        raise Exception('Binance exchange not found')

    price = binance['pairPrice']

    if price is None:
        raise Exception('Price not found')
    print(price)

    
    return {
        'statusCode': 200,
        'body': json.dumps(price)
    }

