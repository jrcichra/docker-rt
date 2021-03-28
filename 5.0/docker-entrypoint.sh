#!/bin/bash

set -euo pipefail

: "${RT_WEB_PORT:=80}"

sed -i "s/RT_WEB_PORT/$RT_WEB_PORT/g" /opt/rt5/etc/RT_SiteConfig.pm
sed -i "s/RT_WEB_DOMAIN/$RT_WEB_DOMAIN/g" /opt/rt5/etc/RT_SiteConfig.pm

exec "$@"
