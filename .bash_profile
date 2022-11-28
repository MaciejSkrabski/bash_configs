#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
	export MOZ_ENABLE_WAYLAND=1
    export BEMENU_BACKEND=wayland
    export QT_QPA_PLATFORM=wayland
    export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
    export GTK_USE_PORTAL=0
fi
