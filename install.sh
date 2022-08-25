CLEANSERVICE=true
DEBUG=true
LATESTARTSERVICE=false
PROPFILE=false
POSTFSDATA=false

print_modname() {
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
ui_print "
┏━━━┳━━━┳━━━┳━━━┳━━━┳┓╋┏┳━━━┓
┃┏━┓┃┏━━┫┏━┓┃┏━┓┃┏━┓┃┃╋┃┃┏━┓┃
┃┗━┛┃┗━━┫┃╋┗┫┃╋┃┃┗━━┫┃╋┃┃┗━━┓
┃┏━━┫┏━━┫┃┏━┫┗━┛┣━━┓┃┃╋┃┣━━┓┃
┃┃╋╋┃┗━━┫┗┻━┃┏━┓┃┗━┛┃┗━┛┃┗━┛┃
┗┛╋╋┗━━━┻━━━┻┛╋┗┻━━━┻━━━┻━━━┛"
sleep 2
ui_print "
┏━━┳━━━┳━━━┳┓╋╋┏━━━┓
┗┫┣┫┏━┓┃┏━┓┃┃╋╋┃┏━━┛
╋┃┃┃┗━┛┃┃╋┗┫┃╋╋┃┗━━┓
╋┃┃┃┏┓┏┫┃┏━┫┃╋┏┫┏━━┛
┏┫┣┫┃┃┗┫┗┻━┃┗━┛┃┃
┗━━┻┛┗━┻━━━┻━━━┻┛"
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
sleep 2
ui_print " ▌POWERED ▰ PEGASUS "
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
sleep 1
ui_print " ▌VERSION ▰ ✗1"
ui_print " ▌CODENAME ▰ PEGASUS ✗ IRGLF "
sleep 1
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
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
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
ui_print " ▌Activating ▰ Pegasus ✗ Instagram Reel's Green Lines Fixer "
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
ui_print " "
ui_print "▰ Join Our Channel's & Group To Support Us"
ui_print " "
sleep 0.5
ui_print "▰ AndroidRootModulesCommunity ▰ [Group]"
ui_print " "
sleep 0.5
ui_print "▰ StratospherePerformance ▰ [Channel]"
ui_print " "
sleep 0.5
ui_print "▰ StratosphereCloud ▰ [Channel]"
ui_print " "
sleep 2
ui_print "▰ PegasusPerformance ▰ [Channel] "
ui_print " "
sleep 0.5
ui_print "▰ PegasusPerformanceDiscussion ▰ [Channel] "
ui_print " "
sleep 0.5
ui_print "▰ [@Telegram]"
ui_print " "
sleep 4
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
ui_print "❣️️ Thanks To Every Supporter! ❣️️"
ui_print "❣️️And ▰ YOU ▰ For Flashing And Using It ❣️"
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
ui_print "▌ACTIVATED ▰ PEGASUS ✗ IRGLF "
sleep 0.5
ui_print " "

}


on_install() {
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
rm -rf /data/system/package_cache/*
  }

  set_permissions() { 
  set_perm "$MODPATH/placeholder" 0 0 0755
  set_perm_recursive $MODPATH 0 0 0755 0644
  }