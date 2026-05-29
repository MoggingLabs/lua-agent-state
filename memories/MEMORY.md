Continue MoggingLabs Scout waterfall: M2 Lead Data Core in progress; #12 schema, #13 CSV import wizard UI, #14 CSV parsing/column mapping, and #15 import validation/deduplication closed; next #16 commit valid import rows as leads.
§
Hermes/Lua WhatsApp voice transcription is configured with local faster-whisper STT using the small model.
§
Pedro approved a nightly autonomous private-repo MVP builder at 00:00→09:00 that creates repos under the MoggingLabs GitHub org, with market scan/SWOT, full GitHub planning structure, decision docs, and no spend/deploy/publication/messages/secrets.
§
Pedro’s ops preferences: Google Sheet is human dashboard; Hermes Kanban is execution board; statuses backlog/next/in progress/blocked/review/done, P0-P3. GitHub summaries only in 07:00/19:00 or on request. Unread Gmail summaries separate; don’t turn emails into tasks proactively. Calendar needs approval; draft emails, never send without approval. Voice notes execute directly; tasks only if asked. No TTS. Business link swipe-file Sheet: 1VfPSXiapHczIjGjqeLNrpvCAfD8KS9kFu6yfD0gVqvg. Pedro prefers waterfall planning for large software builds when explicitly stated: validate phase deliverables, not partial usable MVPs.
§
High-risk action policy is written at /opt/data/lua/high-risk-action-policy.md and logged in the “Lua Operating System” Google Sheet Decisions tab.
§
Claude Code 2.1.154 is installed locally under /opt/data/home/.local; `/opt/data/home/.local/bin/claude` wraps it and exports Opus 4.8 with 1M context. `~/.claude/settings.json` has `ultracode: true` as the default Claude Code effort/workflow setting; do not pass `--effort ultracode` because v2.1.154 CLI rejects it. security-guidance@claude-plugins-official v2.0.0 is enabled. Claude workflow preference: bypass+interactive remote control, no --max-turns. Codex: gpt-5.5+xhigh, unrestricted danger bypass for approved coding; no artificial turn/time caps.
§
Gmail push scaffold: /opt/data/lua/gmail-push; uses /opt/data/google_token.json and sends WhatsApp via Hermes send_message.
§
Pedro’s SaaS productization direction for the VoxHorizon-inspired lead-gen agency product: use repo only as idea/reference, no code extraction; waterfall-first with full PRD/architecture/schema/API/implementation plan before coding; MVP is image-ad pipeline + client profiles, video later; AI Operator is excluded from MVP and reserved as upsell; Pedro is interested in desktop-first/hybrid if it offloads compute/API/resource costs to customers’ machines/BYOK setup.
§
For the lead-gen agency AdOps OS PRD, Pedro confirmed: browser SaaS MVP with local runner planned in architecture later; BYOK supports cloud vault in MVP and local-only later; Meta launch package export first, paused campaigns/ad drafts later; monitoring pulls Meta+GHL first with kill/scale recommendations as private beta logic; native workflow core with ClickUp export later; creative data model should use shared creative base + media-specific extension tables; client profiles should combine core required structured fields plus freeform profile documents/extracted fields; first commercial motion is paid design partner program; first beta requires PRD/architecture approved, image pipeline E2E, Meta/GHL, compliance, launch package; white-label should be architecture-ready, not MVP UI.
§
Lead-gen AdOps OS artifacts: `/opt/data/product-planning/leadgen-adops-os/` (versioned PRD/architecture; research in `agent-research/`). Slack channel: `mogginglabs-ad-ops` (formerly `mogginglabs-ad-factory`).
§
Coding-agent prompt standard: use the `coding-agent-master-prompts` skill before Claude Code or Codex invocations; Claude prompts use Markdown+XML sections/rubrics, Codex prompts use execution contracts with validation, JSON handoff, and stop conditions.