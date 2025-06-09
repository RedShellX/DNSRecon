#!/bin/bash

Reset='\e[0m'
Black='\e[30m'
Red='\e[31m'
Green='\e[32m'
Yellow='\e[33m'
Blue='\e[34m'
Magenta='\e[35m'
Cyan='\e[36m'
White='\e[37m'
Bold='\e[1m'
Light_Red='\e[91m'

#checking if the usser root or not 
if [[ $UID -ne 0 ]]
then 
        echo -e "${Bold}${Red}Run it as root${Reset}"
        exit 1
fi

# Function to display animated text
animated_text() {
    text="$1"
    for ((i=0; i<${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep 0.03
    done
    echo ""
}

text_vertical() {
    text=("$@")  # Store all input lines as an array

    # Clear screen before animation starts
   # clear
    echo ""

    # Print text line by line with animation
    for (( i=0; i<${#text[@]}; i++ )); do
        echo "${text[i]}"  # Print the current line
        sleep 0.05  # Adjust animation speed
    done
}

# Function to display text with vertical animation (keeps previous lines)
animated_text_vertical() {
    text=("$@")  # Store all input lines as an array

    # Clear screen before animation starts
   # clear
    echo ""

    # Print text line by line with animation
    for (( i=0; i<${#text[@]}; i++ )); do
        echo "${text[i]}"  # Print the current line
        sleep 0.1  # Adjust animation speed
    done
}

# Main banner text animation
animated_text_vertical \
    "  ▄███████▄     ▄████████    ▄████████  ▄██████▄         ▄▄▄▄███▄▄▄▄      ▄████████    ▄████████  ▄████████ ▄██   ▄     " \
    " ██▀     ▄██   ███    ███   ███    ███ ███    ███      ▄██▀▀▀███▀▀▀██▄   ███    ███   ███    ███ ███    ███ ███   ██▄   " \
    "       ▄███▀   ███    █▀    ███    ███ ███    ███      ███   ███   ███   ███    █▀    ███    ███ ███    █▀  ███▄▄▄███   " \
    "  ▀█▀▄███▀▄▄  ▄███▄▄▄      ▄███▄▄▄▄██▀ ███    ███      ███   ███   ███  ▄███▄▄▄      ▄███▄▄▄▄██▀ ███        ▀▀▀▀▀▀███   " \
    "   ▄███▀   ▀ ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ███    ███      ███   ███   ███ ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ███        ▄██   ███    " \
    " ▄███▀         ███    █▄  ▀███████████ ███    ███      ███   ███   ███   ███    █▄  ▀███████████ ███    █▄  ███   ███     " \
    " ███▄     ▄█   ███    ███   ███    ███ ███    ███      ███   ███   ███   ███    ███   ███    ███ ███    ███ ███   ███      " \
    "  ▀████████▀   ██████████   ███    ███  ▀██████▀        ▀█   ███   █▀    ██████████   ███    ███ ████████▀   ▀█████▀       " \
    "                            ███    ███                                                ███    ███                         " \
    "                                                                                                                       "

# Small delay before next animation
sleep 0.5

# "Created By Ashish Ansal" animation
animated_text "                                         Created By Ashish Ansal"

# Small delay before ASCII art
sleep 0.5

# ASCII art animation
animated_text_vertical \
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⡀" \
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠚⠉⠀⠀⠉⠑⢦" \
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠞⠀⠀⠀⠀⠀⠀⠀⠀⠱⡄" \
"⠀⠀⠀⠀⠀⠀⠀⠀⢀⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡀" \
"⠀⠀⠀⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⢣" \
"⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⣠⠔⠋⠉⣩⣍⠉⠙⠢⣄⠀⢸" \
"⠀⠀⠀⠀⠀⠀⠀⠀⢧⡜⢏⠓⠒⠚⠁⠈⠑⠒⠚⣹⢳⡸" \
"⠀⠀⠀⠀⠀⠀⠀⠀⠘⣆⠸⡄⠀⠀⠀⠀⠀⠀⢠⠇⣰⠃" \
"⠀⠀⠀⠀⠀⠀⢀⡴⠚⠉⢣⡙⢦⡀⠀⠀⢀⡰⢋⡜⠉⠓⠦⣀" \
"⠀⠀⠀⠀⠀⡴⠁⢀⣀⣀⣀⣙⣦⣉⣉⣋⣉⣴⣋⣀⣀⣀⡀⠈⢧" \
"⠀⠀⠀⠀⡸⠁⠀⢸⠀⠀⠀⠀⢀⣔⡛⠛⡲⡀⠀⠀⠀⠀⡇⠀⠈⢇" \
"⠀⠀⠀⢠⠇⠀⠀⠸⡀⠀⠀⠀⠸⣼⠽⠯⢧⠇⠀⠀⠀⠀⡇⠀⠀⠘⡆" \
"⠀⠀⠀⣸⠀⠀⠀⠀⡇⠀⠀⠀⠳⢼⡦⢴⡯⠞⠀⠀⠀⢰⠀⠀⠀⠀⢧" \
"⠀⠀⠀⢻⠀⠀⠀⠀⡇⠀⠀⠀⢀⡤⠚⠛⢦⣀⠀⠀⠀⢸⠀⠀⠀⠀⡼" \
"⠀⠀⠀⠈⠳⠤⠤⣖⣓⣒⣒⣒⣓⣒⣒⣒⣒⣚⣒⣒⣒⣚⣲⠤⠤⠖⠁" \
"⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀" \
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿" \   

sleep 1.5 

a=$"Enter Domain Name :"
b=$"Press Enter to Return to The Main Menu..."
#=========================================================================================

# WHOIS Lookup Function Main

# WHOIS Lookup Function
whois_lookup() {
	echo ""
	read -p "${a} " domain
	echo "===================================================="
	whois "$domain"
	echo ""
	echo "===================================================="
	read -p "${b}"
}
#=========================================================================================

#DNS Lookup Main

# DNS Lookup Function
dns_lookup() {
	echo ""
	read -p "${a} " domain
	echo "=================================================="
	dnsenum --enum "$domain"
	echo ""
	echo "=================================================="
	read -p "${b}"
}
#==========================================================================================

# Subdomain Enumeration Function Main

# 1) Normal Subdomain Enumeration
normal_subenum() {
	echo ""
	read -p "${a} " domain
	echo "=================================================="
	subfinder -d "$domain"
	echo ""
	echo "=================================================="
	read -p "${b}"
}

# 2) Active Subdomain Enumeration
active_subenum() {
	echo ""
	read -p "${a} " domain
	echo "=================================================="
	amass enum -active -d "$domain"
	echo ""
	echo "=================================================="
	read -p "${b}"
}

# 3) Passive Subdomain Enumeration
passive_subenum() {
	echo ""
	read -p "${a} " domain
	echo "=================================================="
	amass enum -passive -d "$domain"
	echo ""
	echo "=================================================="
	read -p "${b}"
}

# 4) Active + Passive Subdomain Enumeration
active_passive() {
	echo ""
	read -p "${a} " domain
	echo "=================================================="
	amass enum -d "$domain" -active
	echo ""
	echo "=================================================="
	read -p "${b}"
}

# 5) DNS Enumeration Using Dictionary Attack
dnsenum_dictionary() {
	echo ""
	read -p "${a} " domain
	echo "=================================================="
	dnsrecon -d "$domain" -t brt -D /usr/share/wordlists/dnsmap.txt
	echo ""
	echo "=================================================="
	read -p "${b}"
}

# 6) Advanced Enumeration with Recursive Brute-force
advancedenum_recursive() {
	echo ""
	read -p "${a} " domain
	echo "=================================================="
	amass enum -d "$domain" -active -brute
	echo ""
	echo "=================================================="
	read -p "${b}"
}

# 7) Subdomain Enumeration with Recursive DNS Lookup
subdomainenum_dnslookup() {
	echo ""
	read -p "${a} " domain
	echo "=================================================="
	amass enum -d "$domain" -active -brute -r 8.8.8.8,1.1.1.1
	echo ""
	echo "=================================================="
	read -p "${b}"
}

# 8) Full Attack: passive + Active + Recursive + Wordlist Based
full_attack() {
	echo ""
	read -p "${a} " domain
	echo "=================================================="
	amass enum -d "$domain" -active -brute -w /usr/share/wordlists/dnsmap.txt
	echo ""
	echo "=================================================="
	read -p "${b}"
}

#Subdomain Enumeration Function
subdomain_enumeration() {
	while true; do
		clear
		echo ""
		echo "=================================================="
		animated_text "            Subdomain Enumeration"
		echo "=================================================="
		echo ""
text_vertical \
	 "0) Back" \
	 "1) Normal Subdomain Enumeration" \
	 "2) Active Subdomain Enumeration" \
	 "3) Passive Subdomain Enumeration" \
	 "4) Active + Passive Subdomain Enumeration" \
	 "5) DNS Enumeration Using Dictionary Attack" \
	 "6) Advanced Enumeration with Recursive Brute-force" \
	 "7) Subdomain Enumeration with Recursive DNS Lookups" \
	 "8) Full Attack: Passive + Active + Recursive + Wordlist Based" \
	 ""
		read -p "Select an Option : " choise

		case $choise in
			0)echo "Back to the Main Menu..."
				sleep 1
				return
				;;
			1) normal_subenum ;;
			2) active_subenum ;;
			3) passive_subenum ;;
			4) active_passive ;;
			5) dnsenum_dictionary ;;
			6) advancedenum_recursive ;;
			7) subdomainenum_dnslookup ;;
			8) full_attack ;;
			*) animated_text "Invalid Option, Try Again..." ;;
		esac
	done
}
#============================================================================================================

# Zone Transfer Check
zone_transfer_check() {
	echo ""
	read -p "${a} " domain
        echo "=================================================="
        fierce --domain "$domain"
        echo ""
        echo "=================================================="
        read -p "${b}"
}
#===========================================================================================================

#Reverse DNS Lookup
reverse_dns_lookup() {
	echo ""
	read -p "Enter IP Address: " ip
	echo "=================================================="
	dig -x "$ip"
	echo ""
	echo "=================================================="
	read -p "${b}"
}
#==========================================================================================================

#PTR Record Enumeration
ptr_record_enumeration() {
	echo ""

	# Prompt user to enter an IP address
	read -p "Enter IP Address: " ip

	# Extract the first three octets
	subnet=$(echo "$ip" | awk -F'.' '{print $1"."$2"."$3".0/24"}')
	echo ""
	# Display the result
	echo "Converted to Subnet: $subnet"
	echo "=================================================="
	dnsrecon -r "$subnet"
	echo ""
	echo "=================================================="
	read -p "${b}"
}
#===========================================================================================================

# DNS Cache snooping 
dns_cache_snooping() {
	echo ""

	# Enter DNS server IP you want to snoop
	read -p "Enter DNS Server IP you want to Snoop: " ip
	echo ""

	# Domain name to check 
	read -p "Enter Domain Name you want to Check: " domain
	echo "=================================================="
	dig @"$ip" "$domain" +norecurse
	echo ""
	echo "=================================================="
	read -p "${b}"
}
#==========================================================================================================

# Wildcard DNS Analysis
wildcard_dns_analysis() {
	echo ""

	#Enter fake domain to check 
	echo "Checking the Domain is Existing or Not"
	read -p "Enter Fake or non-existent subdomain names of the target domain : " domain
	echo "=================================================="
	host "$domain"
	echo ""
	echo "=================================================="
	read -p "${b}"
}

#=========================================================================================================

# Scan DNS Port
scan_dns_port() {
	echo ""

	# Enter domain or ip to check dns port
	read -p "Enter Domain/IP to Check DNS Port : " domain_ip
	echo "=================================================="
	nmap "-p 53" "$domain_ip"
	echo ""
	echo "=================================================="
	read -p "${b}"

}

#========================================================================================================

# Brute force dns report
brute_force_dns_reports() {
	echo ""
	read -p "${a} " domain
	echo "=================================================="
	dnsrecon -d "$domain" -D /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt -t brt
	echo ""
	echo "=================================================="
	read -p "${b}"
}

#========================================================================================================

# Certificate Transperancy Logs Lookup
cerificate_transperancy_logs_lookup() {
	echo ""
	read -p "${a} " domain
	echo "=================================================="
	if ! command -v jq &> /dev/null; then
		echo "[*] 'jq' not found. Installing..."
		apt install jq
		echo ""
		echo "=================================================="
		echo ""
		curl -s "https://crt.sh/?q=%."$domain"&output=json" | jq '.[].name_value' | sort -u

	else
	echo "=================================================="
	curl -s "https://crt.sh/?q=%."$domain"&output=json" | jq '.[].name_value' | sort -u
	fi
	echo ""
	echo "=================================================="
	read -p "${b}"
}

#=======================================================================================================

# Men for user selection
# Function to display the main menu
main_menu() {
	while true; do 
		clear
		echo ""
		animated_text "    DNS Footprinting & Reconnaissance Toolkit"
		echo "=================================================="
		animated_text "                  Main Menu"
		echo "=================================================="
		echo ""
		text_vertical \
	        "1) WHOIS Lookup" \
	        "2) DNS Lookup" \
		"3) Subdomain Enumeration" \
		"4) Zone Transfer Check" \
		"5) Reverse DNS Lookup" \
		"6) PTR Record Enumeration" \
		"7) DNS Cache snooping" \
		"8) Wildcard DNS Analysis" \
		"9) Scan DNS Port" \
		"10) Brute Force DNS Reports" \
		"11) Certificate Transperancy Logs Lookup" \
		"12) Exit" \
		""
		read -p "Select an option : " choise

		case $choise in 
			1) whois_lookup ;;
			2) dns_lookup ;;
			3) subdomain_enumeration ;;
			4) zone_transfer_check ;;
			5) reverse_dns_lookup ;;
			6) ptr_record_enumeration ;;
			7) dns_cache_snooping ;;
			8) wildcard_dns_analysis ;;
			9) scan_dns_port ;;
			10) brute_force_dns_reports ;;
			11) cerificate_transperancy_logs_lookup ;;
			12) exit ;;
    			*) animated_text "Invalid Option, Try Again..." ;;
		esac

    	done
}

#call main menu function
main_menu

