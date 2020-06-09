[[ -f ~/.Xresources ]] && xrdb -merge -I$HOMES ~/.Xresources
sh ~/.fehbg
exec i3
