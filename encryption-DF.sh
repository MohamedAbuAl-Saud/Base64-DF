#!/bin/bash

NC='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'

encode_base64() {
    echo -n "$1" | base64
}

decode_base64() {
    echo -n "$1" | base64 --decode
}

while true; do
    clear
    echo -e "================================="
    echo -e "        Base64 Encoder/Decoder"
    echo -e "================================="
    echo -e "1. Encode Text"
    echo -e "2. Decode Text"
    echo -e "3. Show Developer Info"
    echo -e "0. Exit"
    echo -e "================================="
    read -p "Select an option (1/2/3/0): " option

    case $option in
        1)
            read -p "Enter the text to encode: " input_text
            encoded_text=$(encode_base64 "$input_text")
            echo -e "${CYAN}Encoded Text: $encoded_text${NC}"
            read -p "Press Enter to continue..."
            ;;
        2)
            read -p "Enter the Base64 encoded text: " encoded_input
            decoded_text=$(decode_base64 "$encoded_input")
            echo -e "${GREEN}Decoded Text: $decoded_text${NC}"
            read -p "Press Enter to continue..."
            ;;
        3)
            echo -e "================================="
            echo -e "Developer Information:"
            echo -e "Username: @A_Y_TR"
            echo -e "Telegram Channel: ${CYAN}https://t.me/cybersecurityTemDF${NC}"
            echo -e "================================="
            read -p "Press Enter to return to the menu..."
            ;;
        0)
            echo "Exiting..."
            break
            ;;
        *)
            echo -e "Invalid option! Please choose 1, 2, 3, or 0."
            read -p "Press Enter to try again..."
            ;;
    esac
done
