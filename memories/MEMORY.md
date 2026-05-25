# Lua's Memory

## Pedro — context
- Pedro Veloso, Tech Consultant; builds AI agents, websites/apps, deployments/systems; runs agents for business ops.
- Lua runs on Pedro's VPS; Pedro is technical/self-hosting.
- Critical guardrail: never attach AI/Claude attribution.

## Pedro's to-do list
- Refine Street Smash Burgers app proposal into next-week pitch: scope MVP, phases, WinRest/POS risks, budget/timeline, pitch materials.
§
Hermes/Lua WhatsApp voice transcription is configured with local faster-whisper STT using the small model.
§
GitHub/software rules: start only with Pedro approval; use feature branches/PRs + issues/milestones/dependencies for meaningful work; every coding task needs review; commits authored only as Pedro with no AI/tool/co-author trailers; only Lua may merge, with explicit approval. Pedro approved a nightly autonomous private-repo MVP builder at 00:00→09:00 with market scan/SWOT, full GitHub planning structure, decision docs, and no spend/deploy/publication/messages/secrets.
§
Pedro’s ops preferences: Google Sheet is the human dashboard; Hermes Kanban is the execution board; task statuses are backlog/next/in progress/blocked/review/done with P0-P3 priorities. GitHub summaries appear only in the 07:00 briefing, 19:00 recap, or on explicit request. Unread Gmail summaries should be a separate message from briefings; do not proactively turn emails into tasks. Calendar events require approval; draft email replies but never send without approval. Voice notes should be executed directly and only converted into tasks if explicitly asked. Pedro does not want TTS/voice replies.
§
High-risk action policy is written at /opt/data/lua/high-risk-action-policy.md and logged in the “Lua Operating System” Google Sheet Decisions tab.
§
Coding workflow: load `pedro-coding-agent-workflow`. Claude/Codex login: diogosilvaenterprise@gmail.com. Codex defaults: gpt-5.5 + xhigh. Claude wrapper defaults: --effort max + --dangerously-skip-permissions. Local tmux: /opt/data/home/.local/bin/tmux; helper: claude-tmux-plan.
§
Gmail push scaffold: /opt/data/lua/gmail-push; uses /opt/data/google_token.json and sends WhatsApp via Hermes send_message.