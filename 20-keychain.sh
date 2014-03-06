# Keychain allows sharing a single ssh-agent between logins
if [ ! -z "`which keychain`"]; then
  eval `keychain --eval`
fi
