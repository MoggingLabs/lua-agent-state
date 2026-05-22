# lua-agent-state

Automated backup of the **Lua** Hermes agent on voxhorizon-vps.

- **Plaintext:** `config.yaml`, `SOUL.md`, `memories/`, `cron/`, `hooks/`, `plans/`
- **Encrypted (GPG AES256, symmetric):** `secrets.tar.gz.gpg` — contains `.env`, `auth.json`, `mcp-tokens/`, `whatsapp/session/`
- **Excluded:** caches, node_modules, `sessions/`, `state.db` (reproducible / high-churn / chat history)

Commits are pushed automatically whenever state changes (per-minute check on the VPS).

## Restore on a fresh VPS
1. Clone this repo; copy plaintext files into the agent's HERMES_HOME (`/opt/data`).
2. Decrypt secrets:
   `gpg --batch --passphrase 'YOUR-PASSPHRASE' -d secrets.tar.gz.gpg | tar -C /opt/data -xzf -`
3. `chown -R 10000:10000 /opt/data` and start the container.

The passphrase is **not** stored in this repo. It is held by Pedro (password manager) and on the VPS at `/root/.lua-backup-pass`.
