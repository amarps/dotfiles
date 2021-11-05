if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ];
   exec ck-launch-session dbus-launch startx
end
xrdb ~/.Xresources

set -x PATH $PATH ~/.local/bin
set -x CPLUS_INCLUDE_PATH $CPLUS_INCLUDE_PATH ~/.local/include
set -x LIBRARY_PATH $LIBRARY_PATH ~/.local/lib
set -x LD_LIBRARY_PATH $LD_LIBRARY_PATH ~/.local/lib
set -x PATH $PATH ~/.dotnet/tools
