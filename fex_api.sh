api="https://fex.plus/api"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"
function check_mails(){
		curl --request GET \
		--url "$api/mails?email=$1&limit=$2&epin=" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function check_email() {
		curl --request GET \
		--url "$api/box/hidden?email=$1&epin=" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}