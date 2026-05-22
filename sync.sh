#!/bin/bash
set -uo pipefail
DATA=/docker/hermes-lua/data
REPO=/opt/lua-backup
PASS=/root/.lua-backup-pass
export GIT_SSH_COMMAND="ssh -i /root/.ssh/lua_backup_deploy -o IdentitiesOnly=yes -o StrictHostKeyChecking=accept-new"
cd "$REPO" || exit 1

# 1. Mirror plaintext state
rsync -a --delete "$DATA/config.yaml" "$REPO/config.yaml"
rsync -a --delete "$DATA/SOUL.md" "$REPO/SOUL.md"
rsync -a --delete "$DATA/memories/" "$REPO/memories/"
rsync -a --delete --exclude '.tick.lock' --exclude 'output/' "$DATA/cron/" "$REPO/cron/"
[ -d "$DATA/hooks" ] && rsync -a --delete "$DATA/hooks/" "$REPO/hooks/"
[ -d "$DATA/plans" ] && rsync -a --delete "$DATA/plans/" "$REPO/plans/"

# 2. Re-encrypt secrets only when they actually change (gpg output is non-deterministic)
HASH=$(find "$DATA/.env" "$DATA/auth.json" "$DATA/mcp-tokens" "$DATA/whatsapp/session" -type f -exec sha256sum {} \; 2>/dev/null | sort | sha256sum | awk '{print $1}')
if [ "$HASH" != "$(cat "$REPO/.secrets.hash" 2>/dev/null)" ]; then
  tar -C "$DATA" -czf - .env auth.json mcp-tokens whatsapp/session 2>/dev/null \
    | gpg --batch --yes --symmetric --cipher-algo AES256 --passphrase-file "$PASS" -o "$REPO/secrets.tar.gz.gpg"
  echo "$HASH" > "$REPO/.secrets.hash"
fi

# 3. Commit + push only when something changed
git add -A
if ! git diff --cached --quiet; then
  git commit -q -m "sync $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  git push -q origin HEAD:main
fi
