Pedro expects strict approval boundaries during waterfall planning: reading related files is fine, but edits should be limited to the explicitly approved artifact; ask before editing adjacent/provenance files unless he explicitly approves broader scope.
§
Hermes/Lua WhatsApp voice transcription is configured with local faster-whisper STT using the small model.
§
Pedro approved a nightly autonomous private-repo MVP builder at 00:00→09:00 that creates repos under the MoggingLabs GitHub org, with market scan/SWOT, full GitHub planning structure, decision docs, and no spend/deploy/publication/messages/secrets.
§
Pedro’s ops preferences: Google Sheet is the human dashboard; Hermes Kanban is execution board with backlog/next/in progress/blocked/review/done and P0-P3. GitHub summaries only in 07:00/19:00 or on request. Unread Gmail summaries stay separate; don’t turn emails into tasks proactively. Draft emails, never send without approval. Voice notes execute directly; tasks only if asked. No TTS. Business swipe-file Sheet: 1VfPSXiapHczIjGjqeLNrpvCAfD8KS9kFu6yfD0gVqvg. Waterfall planning means validating full phase deliverables, not partial MVPs.
§
High-risk action policy is written at /opt/data/lua/high-risk-action-policy.md and logged in the “Lua Operating System” Google Sheet Decisions tab.
§
Gmail push scaffold: /opt/data/lua/gmail-push; uses /opt/data/google_token.json and sends WhatsApp via Hermes send_message.
§
Pedro’s SaaS productization direction for the VoxHorizon-inspired lead-gen agency product: use repo only as idea/reference, no code extraction; waterfall-first with full PRD/architecture/schema/API/implementation plan before coding; MVP is image-ad pipeline + client profiles, video later; AI Operator is excluded from MVP and reserved as upsell; Pedro is interested in desktop-first/hybrid if it offloads compute/API/resource costs to customers’ machines/BYOK setup.
§
For the lead-gen agency AdOps OS PRD, Pedro confirmed: browser SaaS MVP with local runner planned in architecture later; BYOK supports cloud vault in MVP and local-only later; Meta launch package export first, paused campaigns/ad drafts later; monitoring pulls Meta+GHL first with kill/scale recommendations as private beta logic; native workflow core with ClickUp export later; creative data model should use shared creative base + media-specific extension tables; client profiles should combine core required structured fields plus freeform profile documents/extracted fields; first commercial motion is paid design partner program; first beta requires PRD/architecture approved, image pipeline E2E, Meta/GHL, compliance, launch package; white-label should be architecture-ready, not MVP UI.
§
Lead-gen AdOps OS artifacts: `/opt/data/product-planning/leadgen-adops-os/` (versioned PRD/architecture; research in `agent-research/`). GitHub repo: `MoggingLabs/mogginglabs-ad-ops` is public. Treat `Diogo-Silva-VoxHorizon-Marketing-Control-Panel` as clean-room/product inspiration only: no code extraction, no Diogo/VoxHorizon-specific business logic, no private client data. Slack channel: `mogginglabs-ad-ops`.
§
Coding-agent prompt standard: use the `coding-agent-master-prompts` skill before Claude Code or Codex invocations; Claude prompts use Markdown+XML sections/rubrics, Codex prompts use execution contracts with validation, JSON handoff, and stop conditions.
§
Lead-gen AdOps OS planning gate: proceed strictly one artifact at a time in this order — final PRD, architecture, data model/ERD, API spec, UX workflow spec. Do not move to the next artifact until Pedro explicitly approves the current document.
§
Claude Code auth works under `HOME=/opt/data/home`; use `/opt/data/home/.local/node_modules/@anthropic-ai/claude-code/bin/claude.exe` directly or recreate `/opt/data/home/.local/bin/claude` wrapper if missing, because the wrapper can disappear during Claude auto-update attempts.