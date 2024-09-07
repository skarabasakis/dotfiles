case $(uname) in
  Darwin) [ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh ;;
  Linux)  [ -f /etc/profile.d/autojump.sh ] && . /etc/profile.d/autojump.sh;;
esac
