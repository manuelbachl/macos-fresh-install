#
# Unset private functions (otherwise they will be available globally)
#
## help
unset -f __help

## preparation
unset -f __prepare
unset -f __checkXCode
unset -f __checkHomebrew

## heat up
unset -f __heatUp

## globals
unset -f __main