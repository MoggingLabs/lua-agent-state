## Pedro's to-do list
- Refine Street Smash Burgers app proposal into next-week pitch: scope MVP, phases, WinRest/POS risks, budget/timeline, pitch materials.
- Continue MoggingLabs Scout waterfall: finish M1 App Foundation leftovers (#7 design system foundation, #11 Vercel preview deployment), then start M2 Lead Data Core.
§
Hermes/Lua WhatsApp voice transcription is configured with local faster-whisper STT using the small model.
§
GitHub/software rules: start only with Pedro approval; use feature branches/PRs + issues/milestones/dependencies for meaningful work; every coding task needs review; commits authored only as Pedro with no AI/tool/co-author trailers; only Lua may merge, with explicit approval. Pedro approved a nightly autonomous private-repo MVP builder at 00:00→09:00 with market scan/SWOT, full GitHub planning structure, decision docs, and no spend/deploy/publication/messages/secrets.
§
Pedro’s ops preferences: Google Sheet is human dashboard; Hermes Kanban is execution board; statuses backlog/next/in progress/blocked/review/done, P0-P3. GitHub summaries only in 07:00/19:00 or on request. Unread Gmail summaries separate; don’t turn emails into tasks proactively. Calendar needs approval; draft emails, never send without approval. Voice notes execute directly; tasks only if asked. No TTS. Business link swipe-file Sheet: 1VfPSXiapHczIjGjqeLNrpvCAfD8KS9kFu6yfD0gVqvg. Pedro prefers waterfall planning for large software builds when explicitly stated: validate phase deliverables, not partial usable MVPs.
§
High-risk action policy is written at /opt/data/lua/high-risk-action-policy.md and logged in the “Lua Operating System” Google Sheet Decisions tab.
§
Claude Code runs via `npx @anthropic-ai/claude-code` if `claude` is absent; security-guidance@claude-plugins-official v2.0.0 is installed/enabled under /opt/data/home. Claude wrapper preference: effort max+bypass+interactive remote control, no --max-turns. Codex: gpt-5.5+xhigh, unrestricted danger bypass for approved coding; no artificial turn/time caps.
§
Gmail push scaffold: /opt/data/lua/gmail-push; uses /opt/data/google_token.json and sends WhatsApp via Hermes send_message.