#!/bin/sh

set -e

REQUIRED_VARS="PROXY_PASS API_PROXY_PASS API_PUBLIC_DOMAIN USERNAME PASSWORD"

for var in $REQUIRED_VARS; do
  eval "[ -z \"\$$var\" ]" && echo "Missing $var environment variable" >&2 && exit 1
done

export PASSWORD_HASH=$(caddy hash-password --plaintext "$PASSWORD")

exec caddy run --config /etc/caddy/Caddyfile --adapter caddyfile 2>&1
