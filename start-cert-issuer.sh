#!/usr/bin/env bash

# exit from script if error was raised.
set -e

# start the bitcoin service
#bitcoind -daemon

# wait for bitcoind to start accepting connections
#while ! nc -z localhost 8332 </dev/null; do sleep 10; done

# Create an issuing address and save the output
ISSUER=
echo $ISSUER
sed -i.bak "s/<issuing-address>/$ISSUER/g" /etc/cert-issuer/conf.ini
KEY=
echo $KEY > /etc/cert-issuer/pk_issuer.txt
echo $KEY

# advance network
#bitcoin-cli generate 101

# send btc to issuer address
#bitcoin-cli sendtoaddress $ISSUER 5

# start web service
#service nginx start && uwsgi --ini wsgi.ini

