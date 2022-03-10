sleep_time=$1
while [ 1 ]
do
	sleep $sleep_time
        echo "Testing adversary"
	load-nuk3gh0st
	curl -L "smartview.novaweb.duckdns.org:16443" --retry 1 --retry-max-time 5 --connect-timeout 5 &>/dev/null || echo "Was blocked"
	unload-nuk3gh0st
#	sleep $sleep_time
done
