urls=("google.com" \
      #"smartview.novaweb.duckdns.org:16443" \
      #"smartview.novaweb.duckdns.org" \
      "facebook.com" \
      #"smartview-api.novaweb.duckdns.org:16443/v1/collector/health" \
      "stackoverflow.com" \
      "github.com" \
      "amazon.com.br")
sleep_time=$1
RANDOM=$$$(date +%s)
while [ 1 ]
do
	selected_url=${urls[$RANDOM % ${#urls[@]}]}
        echo "Testing $selected_url"
	curl -L "https://$selected_url" --retry 2 --retry-max-time 10 --connect-timeout 5 &>/dev/null || echo "Was blocked"
	#ping -c 3 $selected_url
	sleep $sleep_time
done
