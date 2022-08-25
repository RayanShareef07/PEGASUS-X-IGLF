CLEANSERVICE=true
DEBUG=true
LATESTARTSERVICE=false
PROPFILE=false
POSTFSDATA=false

print_modname() {
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print "
┏━━━┳━━━┳━━━┳━━━┳━━━┳┓╋┏┳━━━┓
┃┏━┓┃┏━━┫┏━┓┃┏━┓┃┏━┓┃┃╋┃┃┏━┓┃
┃┗━┛┃┗━━┫┃╋┗┫┃╋┃┃┗━━┫┃╋┃┃┗━━┓
┃┏━━┫┏━━┫┃┏━┫┗━┛┣━━┓┃┃╋┃┣━━┓┃
┃┃╋╋┃┗━━┫┗┻━┃┏━┓┃┗━┛┃┗━┛┃┗━┛┃
┗┛╋╋┗━━━┻━━━┻┛╋┗┻━━━┻━━━┻━━━┛"
sleep 2
ui_print "
          ┏━┓┏━┓
          ┗┓┗┛┏┛
          ╋┗┓┏┛
          ╋┏┛┗┓
          ┏┛┏┓┗┓
          ┗━┛┗━┛"
ui_print "
┏━━┳━━━┳━━━┳┓╋╋┏━━━┓
┗┫┣┫┏━┓┃┏━┓┃┃╋╋┃┏━━┛
╋┃┃┃┗━┛┃┃╋┗┫┃╋╋┃┗━━┓
╋┃┃┃┏┓┏┫┃┏━┫┃╋┏┫┏━━┛
┏┫┣┫┃┃┗┫┗┻━┃┗━┛┃┃
┗━━┻┛┗━┻━━━┻━━━┻┛"
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
ui_print " ▌POWERED ▰ PEGASUS "
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
ui_print "▌VERSION ▰ X1"
ui_print "▌CODENAME ▰ PEGASUS ✗ IRGLF "
sleep 1
ui_print " "
ui_print " ▌FETCHING DEVICE INFORMATIONS ▰ "
sleep 1.5
ui_print " "
ui_print " ▌DEVICE ▰ $(getprop ro.product.model) "
sleep 0.5
ui_print " "
ui_print " ▌BRAND ▰ $(getprop ro.product.system.brand) "
sleep 0.5
ui_print " "
ui_print " ▌MODEL ▰ $(getprop ro.build.product) "
sleep 0.5
ui_print " "
ui_print " ▌KERNEL ▰ $(uname -r) "
sleep 0.5
ui_print " "
ui_print " ▌PROCESSOR ▰ $(getprop ro.product.board) "
sleep 0.5
ui_print ""
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print "▌ACTIVATED ▰ PEGASUS X IRGLF 
ui_print "▰
}


on_install() {
ui_print "▰ Extracting Module Files"
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
rm -rf /data/system/package_cache/*
  }

  set_permissions() { 
  set_perm "$MODPATH/placeholder" 0 0 0755
  set_perm_recursive $MODPATH 0 0 0755 0644
  }