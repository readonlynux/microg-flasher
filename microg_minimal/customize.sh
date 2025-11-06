ui_print "$(cat $MODPATH/assets/microGSplash)"
ui_print "Welcome to microG setup and wizard!!"
ui_print "Module Version: $(cat $MODPATH/version)"
ui_print "📱 Device Brand: $(getprop ro.product.brand)"
ui_print "📱 Device Model: $(getprop ro.product.model)"
ui_print "💾 Android Version: $(getprop ro.build.version.release)"
if [ "$(getprop ro.build.version.sdk)" -lt "30" ]; then
	mv $MODPATH/product/app/ $MODPATH/product/priv-app/ $MODPATH/product/etc/ $MODPATH/system/
fi
