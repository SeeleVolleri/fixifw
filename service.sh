#!/system/bin/sh
[ "$(getprop persist.sys.ifw.enabled)" = "false" ] && setprop persist.sys.ifw.enabled true
