# PersonalOS for Cowork

A community-shareable personal AI system that learns how you work and adapts over time. Built entirely with Cowork-native patterns—no code, no database, just markdown skills.

**Version:** 1.0.0 (Phases 1-4 Complete)
**Status:** Production Ready - Full implementation with 15 core skills

---

## What Is PersonalOS?

PersonalOS is a personal AI assistant that:
- ✅ Adapts to your work patterns over time
- ✅ Learns your communication style and preferences
- ✅ Automates recurring workflows via skill progression
- ✅ Works across Terminal, Telegram, and Computer Use
- ✅ Requires zero setup—just install and run onboarding

**Built on Cowork:** Uses Cowork's skills system, frontmatter, and context files—no custom infrastructure.

---

## Quick Start

### Installation

```bash
# Clone to your Cowork workspace
git clone https://github.com/your-org/personal-os-cowork.git

# Or copy to your skills directory
cp -r personal-os-cowork ~/.cowork/skills/
```

### Onboarding (5 minutes)

```
You: "Set up my PersonalOS"

PersonalOS: "Let's get to know you. I'll ask 5 questions—each takes a minute or two.
            This helps me adapt to how you work."

[Completes 5-question interview]

PersonalOS: "Setup complete! I've learned:
            ✓ Your role and work context
            ✓ Your top priorities
            ✓ Your communication style
            ✓ Your team and key contacts
            ✓ Your internal vocabulary

            I'm starting at autonomy level 1 (Guardian)—I'll confirm actions before executing.
            As we work together, I'll learn your patterns and level up my skills.

            Try saying: 'What can you do?' or 'Help me with...'"
```

### What You Get After Onboarding

**Core Skills Available:**
- `daily-agenda` - Morning plan from priorities
- `session-summary` - Capture learnings after work
- `draft-email` - Style-matched email drafts
- `quick-research` - 10-min fact-finding with sources
- `meeting-notes` - Structured capture with action items
- And 20+ more across 6 skill packs

**Personalization:**
- Identity, communication style, team directory, glossary
- Current priorities, patterns, learnings
- Skill levels (L1→L2→L3) and autonomy ladder

---

## File Structure

```
personal-os-cowork/
├── README.md                    # This file
├── CLAUDE.md                   # Main orchestration
│
├── personal-os/                 # Your personal data (don't edit skills-packs/)
│   ├── onboarding/             # Interview + role detection
│   │   ├── interview.md
│   │   └── role-detection.md
│   │
│   ├── context/                # Layer 1: Who you are
│   │   ├── identity.md              # Created during onboarding
│   │   ├── communication-style.md    # Created during onboarding
│   │   ├── working-preferences.md   # Created during onboarding
│   │   ├── team-directory.md        # Created during onboarding
│   │   └── glossary.md             # Created during onboarding
│   │
│   ├── memory/                 # Layer 2: What matters
│   │   ├── current-priorities.md    # Created during onboarding
│   │   ├── patterns.md             # Auto-updates
│   │   ├── relationships.md        # Auto-updates
│   │   ├── learnings.md            # Grows over time
│   │   └── check-ins/             # Weekly/monthly reflections
│   │
│   ├── adaptation/             # Layer 3: How it improves
│   │   ├── skill-levels.md         # Tracks L1/L2/L3 per skill
│   │   ├── autonomy-level.md        # 4-level ladder state
│   │   ├── feedback.md             # User corrections
│   │   ├── preferences.md          # Learned defaults
│   │   └── auto-emergence.md       # Auto-created workflows
│   │
│   └── logs/                   # Session history (optional)
│
└── skill-packs/                # Skills (read-only, don't edit personal-os/)
    ├── meta-system/           # Foundation
    ├── personal-management/    # Daily work
    ├── communication/         # Writing
    ├── productivity/          # Getting things done
    ├── research/             # Knowledge work
    ├── collaboration/         # Team work
    └── learning/             # Growth
```

**Key Design Principle:**
- `skill-packs/` = System code (upgrade-safe, versioned)
- `personal-os/` = Your data (persistent, backed up)

---

## Core Features

### 1. Onboarding System

5-question interview creates your personal context:
1. **Identity** - Who you are, what you do
2. **Priorities** - What you're focused on now
3. **Communication** - How you prefer to interact
4. **Team** - Who you work with most
5. **Glossary** - Internal terms and jargon

### 2. Skill Index Pattern

Token-efficient routing maps your requests to best skill:
```
You: "What should I focus on today?"

PersonalOS: "Use [daily-agenda] for this.
            Generates prioritized agenda from current priorities."
```

### 3. Three-Layer Memory

- **Layer 1: Identity** - Who you are (name, role, style, team, glossary)
- **Layer 2: Memory** - What matters (priorities, patterns, learnings)
- **Layer 3: Adaptation** - How it improves (skill levels, autonomy, preferences)

### 4. Skill Progression (L1 → L2 → L3)

```
Level 1: GUIDED     → Follows process exactly. Asks for confirmation.
Level 2: CONFIDENT   → Skips unnecessary questions. Applies learned defaults.
Level 3: ANTICIPATORY → Triggers proactively. Pre-populates from patterns.
```

Skills level up based on usage + feedback.

### 5. Autonomy Ladder (4 Levels)

```
Level 1: GUARDIAN   → Confirms ALL actions before executing
Level 2: SUPERVISED → Confirms risky actions only (deletes, emails)
Level 3: TRUSTED    → Confirms nothing except destructive ops
Level 4: AUTONOMOUS → Fully independent (explicit opt-in)
```

Control with natural language: "Be more autonomous" or "Be more careful"

### 6. Pattern Detection & Auto-Emergence

PersonalOS detects recurring workflows and offers to automate them:
```
PersonalOS: "I noticed you do [meeting-notes → session-summary → update-priorities]
            4x this week. Want me to create a compound skill for this?"
```

---

## Cowork Integrations

### Telegram

Access PersonalOS from your phone:
```
/agenda     → Generate daily agenda
/summary    → Capture session learnings
/check      → System health check
/skills     → List available skills
```

Voice messages: Transcribe → Detect intent → Run skill → Text response

### Computer Use

Visual tasks with Cowork's computer use tools:
- **Screenshot analysis** → Extract text, identify UI elements
- **GUI automation** → Click buttons, fill forms
- **Visual debugging** → Find UI issues, accessibility problems
- **Design feedback** → Review mockups vs style guides

### Plugins (Optional MCP Servers)

Extend with external services:
- Gmail MCP → Email sync
- Calendar MCP → Agenda integration
- Notion MCP → Document storage
- GitHub MCP → Code review workflows

**Baseline:** Works fully without plugins using Cowork's built-in tools (browser, file system, terminal)

---

## Skill Packs (Phase 1 Status)

### ✅ Meta-System (Foundation)
- `skill-suggester` - Intent → skill mapping
- `system-check` - Health check + diagnostics
- `workflow-builder` - Automate recurring patterns (Phase 4)
- `skill-upgrader` - L1→L2→L3 progression (Phase 4)

### 🚧 Personal Management (Phase 2)
- `daily-agenda` - Morning plan from priorities
- `session-summary` - Capture learnings
- `weekly-review` - Reflection + planning
- `inbox-zero` - Email/task triage

### 🚧 Communication (Phase 3)
- `draft-email` - Style-matched emails
- `summarize-topic` - Quick briefs
- `presentation` - Slide structure
- `message-review` - Style guidelines check

### 🚧 Research (Phase 3)
- `quick-research` - 10-min fact-finding
- `deep-research` - Multi-hour investigation
- `source-verify` - Cross-check claims
- `synthesis` - Combine findings

### 🚧 Collaboration (Phase 5)
- `meeting-notes` - Structured capture
- `1:1-prep` - Meeting prep
- `project-status` - Status updates
- `async-handoff` - Context for async

### 🚧 Productivity (Phase 5)
- `task-triage` - Prioritize requests
- `time-block` - Calendar integration
- `focus-mode` - Deep work setup
- `decision-framework` - Structured decisions

### 🚧 Learning (Phase 5)
- `skill-learn` - Learn from code/docs
- `pattern-extract` - Find automation targets
- `feedback-loop` - Capture feedback
- `review-progress` - Track growth

---

## Implementation Status

### Phase 1: Foundation ✅ Complete
- [x] File structure
- [x] CLAUDE.md orchestration
- [x] Onboarding system (5-question interview)
- [x] Meta-system skills (skill-suggester, system-check)
- [x] Core identity files

### Phase 2: Workflow Learning ✅ Complete
- [x] Shortcuts skill (session 10+ unlock)
- [x] Daily Routine skill (session 5+ unlock)
- [x] Pattern Detection skill (automatic weekly)
- [x] Telegram integration skill (always active)
- [x] Session tracking templates

### Phase 3: Computer Use ✅ Complete
- [x] Computer Use integration skill
- [x] Basic computer use (session 6+ unlock)
- [x] Advanced computer use (session 21+ unlock)
- [x] Workflow templates (daily-setup, downloads-organizer, form-filler)

### Phase 4: Advanced Learning ✅ Complete
- [x] Self-Correction skill (session 15+ unlock)
- [x] Recommendations skill (session 20+ unlock)
- [x] Optimization skill (session 25+ unlock)
- [x] Progressive unlock system (10 levels)

### Phase 5: Community Share ✅ Complete
- [x] Comprehensive installation guide (INSTALL.md)
- [x] Contribution guidelines (CONTRIBUTING.md)
- [x] Packaging documentation (PACKAGING.md)
- [x] Ready for public GitHub release

**Total Implementation:** 15 core skills across 4 phases + community documentation

---

## Comparison to Other Systems

| Aspect | ClaudeClaw | PAI | Sidekick | **PersonalOS for Cowork** |
|--------|------------|-----|----------|-------------------------|
| **Runtime** | Node.js + SQLite | TypeScript + Hooks | Markdown only | **Markdown + Cowork Skills** |
| **Memory** | SQLite database | Three-tier (hot/warm/cold) | Markdown files | **Progressive memory files** |
| **Adaptation** | Agent specialization | Continuous learning | Skill progression | **Context-aware routing** |
| **Onboarding** | Manual setup | AI-based installation | 5-question interview | **Guided + role detection** |
| **Complexity** | High (code, DB, services) | Very high (infra) | Medium | **Low (Cowork-native)** |
| **Shareability** | Partial (needs code) | Low (complex infra) | High | **High (skills + docs)** |

**What Makes PersonalOS Different:**
1. **Cowork-Native:** Uses Cowork's skills system, frontmatter, and context files
2. **No Code Required:** Pure markdown, no Node.js or TypeScript
3. **Progressive Disclosure:** Starts minimal, adds complexity as patterns emerge
4. **Community Shareable:** Easy to install, customize, and contribute

---

## Troubleshooting

### "Skills don't trigger"

**Cause:** CLAUDE.md not loaded or Skills table missing

**Fix:**
1. Ensure CLAUDE.md is in your Cowork context
2. Check Skills table has entries with descriptions including "Trigger when:"
3. Run `system-check` skill for diagnostics

### "Onboarding didn't create files"

**Cause:** File permissions or path issues

**Fix:**
```bash
# Verify directory structure
ls -la personal-os/personal-os/context/

# Re-run onboarding
You: "Set up my PersonalOS"
```

### "Skill doesn't remember my preferences"

**Cause:** Memory files not loaded or skill-levels.md missing

**Fix:**
1. Check `personal-os/context/` files exist (created in onboarding)
2. Verify `personal-os/adaptation/skill-levels.md` exists
3. Run `system-check` to verify all files

---

## Contributing

PersonalOS is open source. We welcome contributions!

**How to Contribute:**
1. Add skills to existing packs or create new packs
2. Follow Cowork frontmatter format (see `CLAUDE.md` appendix)
3. Include skill-level modifiers (L1/L2/L3 behavior)
4. Add "After This Skill" section for chaining
5. Update this README with new skills

**See Also:**
- Architecture Design: `research/personal-os-synthesis/phase3-architecture-design.md`
- Sidekick Analysis: `research/sidekick-analysis/phase2-sidekick-deep-dive.md`
- Cowork Capabilities: `research/cowork-research/phase1-cowork-capabilities.md`

---

## License

MIT License - See LICENSE file for details

---

## Acknowledgments

PersonalOS for Cowork synthesizes patterns from:
- **Sidekick** - 3-layer architecture, onboarding interview, skill progression
- **PAI** - Continuous learning, feedback loops, multi-tier memory
- **ClaudeClaw** - Agent specialization, Telegram integration, file-based config

Built on **Claude Cowork** - Skills system, frontmatter, context files, Telegram, computer use

---

**Current Status:** Phases 1-5 Complete - Production Ready
**Implementation:** 15 core skills across 4 phases + comprehensive documentation
**Next Steps:** Public GitHub release + community engagement
