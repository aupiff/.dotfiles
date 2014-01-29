[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xmodmap ~/.xmodmaprx
setxkbmap -layout 'us,ru(phonetic)' -option 'grp:alt_shift_toggle,grp_led:scroll'
setxkbmap -option compose:ralt

export LC_CTYPE="en_US.utf8"
export XMODIFIERS=@im=SCIM
export GTK_IM_MODULE="scim"
export QT_IM_MODULE="scim"
scim -d

xmonad
