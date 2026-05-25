# Keychain allows sharing a single ssh-agent between logins
if [ ! -z "$(which keychain 2>/dev/null)" ]; then
  eval `keychain --eval --quiet`
fi
