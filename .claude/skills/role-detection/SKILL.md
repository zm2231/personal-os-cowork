---
name: role-detection
description: "Infers user's role from onboarding answers and recommends specific skills to try first. Run after /onboarding-interview completes."
---

# Role Detection

Reads `personal-os/context/identity.md` and recommends the most useful skills to start with based on role. All 87 skills are already available — this just surfaces the highest-signal ones.

---

## Detection Logic

Match keywords from Role + Work Description fields:

| Keywords | Role | Start With |
|----------|------|------------|
| engineer, developer, software, frontend, backend, fullstack, architect | Engineer/Developer | `/code-review`, `/debugging`, `/git-workflow`, `/api-testing`, `/documentation-generator`, `/daily-agenda` |
| product manager, PM, product owner, roadmap, requirements, spec | Product Manager | `/project-status`, `/stakeholder-communication`, `/meeting-notes`, `/daily-agenda`, `/strategic-planning`, `/risk-management` |
| designer, UX, UI, visual, design | Designer | `/design-feedback`, `/design-system`, `/prototype-review`, `/presentation`, `/daily-agenda` |
| manager, director, VP, head of, team lead, people | Manager/Leader | `/meeting-notes`, `/performance-review`, `/team-management`, `/standup-bot`, `/daily-agenda`, `/handoff-manager` |
| researcher, analyst, data scientist, data | Researcher/Analyst | `/quick-research`, `/data-analysis`, `/literature-review`, `/fact-checker`, `/experiment-design`, `/source-analyzer` |
| founder, CEO, startup, entrepreneur | Founder | `/daily-agenda`, `/strategic-planning`, `/stakeholder-communication`, `/project-status`, `/meeting-notes`, `/quick-research` |
| consultant, freelancer, independent, contractor | Consultant | `/daily-agenda`, `/meeting-notes`, `/project-status`, `/draft-email`, `/time-logging`, `/handoff-manager` |
| writer, content, marketer, copywriter, editor | Content/Writer | `/draft-email`, `/grammar-check`, `/style-transfer`, `/content-strategy`, `/editorial-calendar`, `/tone-adjuster` |
| sales, account manager, business development, BD | Sales/BizDev | `/crm-lite`, `/deal-closing`, `/lead-generation`, `/stakeholder-communication`, `/pipeline-management`, `/draft-email` |

If multiple roles match or unclear: use `/daily-agenda`, `/meeting-notes`, `/quick-research`, `/project-status`, `/draft-email`.

---

## Technical User Check

After role detection, check for technical sophistication signals in the work description:
- Signals: "AI", "agents", "MCP", "API", "infrastructure", "built", "custom tools", "framework", "LLM", "deployed"
- If 2+ signals: note in `adaptation/autonomy-level.md` — recommend L3 (Trusted) and explain why
- If role is engineer/developer with 0 signals: confirm L2 is appropriate, offer L3

---

## Output Format

```
Role detected: [Role]

Skills to try first:
- /skill-name — [one line on why it's relevant to them]
- /skill-name — [one line]
- /skill-name — [one line]
(3–5 skills, not all of them)

All 87 skills are available — use /skill-suggester to browse or just
describe what you need and I'll find the right one.

[If technical signals detected:]
Your autonomy level is set to L[N]. Based on your background with [signals],
L3 (Trusted) might suit you better — I'd work autonomously and present
output for review rather than confirming each step. Want to switch?
```

---

## After This Skill

1. Update `personal-os/memory/learnings.md` with detected role and recommended skills
2. Run `/system-check` to confirm all files are healthy
3. Ask: "Want to try one of these now, or jump into something specific?"
