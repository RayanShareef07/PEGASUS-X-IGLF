CLEANSERVICE=true
DEBUG=true
LATESTARTSERVICE=false
PROPFILE=false
POSTFSDATA=false
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"
REPLACE="
"

  print_modname() {
  ui_print "*******************************"
  ui_print "         Module name        "
  ui_print "*******************************"
  }


  on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  ui_print "- deleting package cache"
  rm -rf /data/system/package_cache/*
  }

  set_permissions() { 
  set_perm_recursive $MODPATH 0 0 0755 0644
  }