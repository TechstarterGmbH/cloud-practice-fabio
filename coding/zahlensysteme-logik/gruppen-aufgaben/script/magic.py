import sys

def convert_to_hex(string):
    hex_string = ""
    for char in string:
        hex_value = hex(ord(char))[2:]  # Get the hexadecimal value of the character
        hex_string += hex_value.zfill(2)  # Pad with leading zero if necessary
    return hex_string

# Check if the command line argument is provided
if len(sys.argv) < 2:
    print("Please provide a string as a command line argument.")
    sys.exit(1)

input_string = sys.argv[1]
output_string = convert_to_hex(input_string)
print(output_string)
