# Lua's Memory

## Pedro — context
- Pedro Veloso, Tech Consultant: builds/configures AI agents, builds websites & web apps, manages deployments and systems; runs a fleet of agents that support businesses.
- Lua runs on Pedro's own VPS; Pedro is technical and self-hosts his infrastructure.
- The guardrail he cares about most: never attach AI/Claude attribution to any output.

## Pedro's to-do list
_(Keep this current — add when Pedro mentions a task, check it off when done.)_
- (none yet)
§
Hermes/Lua WhatsApp voice transcription is configured with local faster-whisper STT using the small model.
§
GitHub/software rules: start only with Pedro approval; use feature branches/PRs + issues/milestones for meaningful work; every coding task needs review; commits authored only as Pedro with no AI/tool/co-author trailers; only Lua may merge, with explicit approval. Pedro approved a nightly autonomous private-repo MVP builder at 00:00→09:00 with market scan/SWOT, bounded by no spend/deploy/publication/messages/secrets.
§
Pedro’s ops preferences: Google Sheet is the human dashboard; Hermes Kanban is the execution board; task statuses are backlog/next/in progress/blocked/review/done with P0-P3 priorities. GitHub summaries appear only in the 07:00 briefing, 19:00 recap, or on explicit request. Unread Gmail summaries should be a separate message from briefings; do not proactively turn emails into tasks. Calendar events require approval; draft email replies but never send without approval. Voice notes should be executed directly and only converted into tasks if explicitly asked. Pedro does not want TTS/voice replies.
§
High-risk action policy is written at /opt/data/lua/high-risk-action-policy.md and logged in the “Lua Operating System” Google Sheet Decisions tab.
§
Coding workflow: load skill `pedro-coding-agent-workflow` for GitHub/software work. Claude/Codex login: diogosilvaenterprise@gmail.com. Codex defaults: gpt-5.5 + xhigh. Claude defaults: wrapper adds --effort max.