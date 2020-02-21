#!/bin/bash
set -e
if [ -n  "$APP" ] && [ -n  "$ARG" ]
   then echo "starting "$APP" "$ARG""
   else echo >&2 "Supposed to be set 1 or 2 arguments: APP=application ARG=argument"
fi
#export $arg1
#export $arg2
#/var/lib/one/remotes/datastore/storpool/monitor_helper-sync 2>&1 >/tmp/monitor_helper_sync.err
#exec /usr/bin/oned -f
exec "$APP" "$ARG"
