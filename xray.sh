#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2841bdd-f5cd-4a39-9a52-49d86365ed0e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

