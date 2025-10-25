#!/system/bin/sh

while [ "$(getprop sys.user.0.ce_available)" != "true" ]; do
  sleep 2
done

if [ -z "$(getprop persist.sys.ifw.enabled)" ]; then
  exit 0
fi

[ "$(getprop persist.sys.ifw.enabled)" = "false" ] && setprop persist.sys.ifw.enabled true

exit 0
