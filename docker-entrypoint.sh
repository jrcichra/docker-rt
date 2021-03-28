#!/bin/bash

set -euo pipefail

: "${RT_WEB_PORT:=80}"
: "${RT_WEB_DOMAIN:=localhost}"

sed -i "s/RT_WEB_PORT/$RT_WEB_PORT/g" /opt/rt%%RT_VERSION_MAJOR%%/etc/RT_SiteConfig.pm
sed -i "s/RT_WEB_DOMAIN/$RT_WEB_DOMAIN/g" /opt/rt%%RT_VERSION_MAJOR%%/etc/RT_SiteConfig.pm

exec "$@"
