#/bin/sh

set -e
set -x

# From:
# http://docs.parseplatform.org/parse-server/guide/#saving-your-first-object

IP=10.192.3.5

curl -X POST \
    -H "X-Parse-Application-Id: my-app-id" \
    -H "Content-Type: application/json" \
    -d '{"score":123,"playerName":"Sean Plott","cheatMode":false}' \
    http://${IP}:1337/parse/classes/GameScore

