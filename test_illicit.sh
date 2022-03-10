./test_request.sh 10 &
sleep 3
./test_adversary.sh $1 &
