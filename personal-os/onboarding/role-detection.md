---
name: role-detection
description: "Trigger when: After onboarding completes. Infers user's role from onboarding answers and suggests relevant skill packs."
version: 1.0.0
metadata:
  hermes:
    tags: [onboarding, setup, role-inference]
---

# Role Detection

This skill runs after onboarding to infer the user's likely role and recommend relevant skill packs. It reads the onboarding answers stored in context files and makes intelligent suggestions.

## When to Run This Skill

Run immediately after `onboarding-interview.md` completes.

## Role Detection Logic

Read `personal-os/context/identity.md` and analyze the user's role description and company context to infer their primary work role.

### Role Inference Rules

| Detected Pattern | Inferred Role | Recommended Skill Packs |
|------------------|---------------|------------------------|
| "engineer", "developer", "software", "frontend", "backend", "fullstack" | Engineer/Developer | personal-management, collaboration, productivity, research |
| "product manager", "PM", "product owner", "roadmap", "requirements" | Product Manager | personal-management, communication, productivity, collaboration |
| "designer", "UX", "UI", "visual", "product design" | Designer | personal-management, communication, productivity, learning |
| "manager", "leader", "director", "VP", "head of", "team lead" | Manager/Leader | personal-management, communication, collaboration, productivity |
| "researcher", "analyst", "data scientist", "research" | Researcher/Analyst | research, personal-management, communication, productivity |
| "founder", "CEO", "startup", "entrepreneur", "business owner" | Founder/Entrepreneur | personal-management, productivity, communication, collaboration |
| "consultant", "freelancer", "independent", "contractor" | Consultant/Freelancer | personal-management, productivity, communication, learning |
| "writer", "content creator", "marketer", "copywriter" | Content Creator | personal-management, communication, productivity, research |
| "sales", "account manager", "business development" | Sales/Business Dev | personal-management, communication, productivity, collaboration |
| Multiple roles mentioned or general description | Generalist | personal-management, productivity, communication, research |

### Detection Process

1. **Read identity.md:**
   ```markdown
   Extract:
   - Role field
   - Company field
   - Work description
   ```

2. **Analyze keywords:**
   - Search for role-specific keywords in all fields
   - Count matches for each role type
   - Choose role with highest keyword count

3. **Check for conflicts:**
   - If multiple roles have equal matches, ask user to clarify
   - If no clear pattern detected, ask user to specify

4. **Generate recommendation:**

   ```
   "Based on your answers, I think you might be a [Inferred Role].

   I recommend loading these skill packs:
   - [Pack 1] - [Brief description]
   - [Pack 2] - [Brief description]
   - [Pack 3] - [Brief description]

   Should I set up these skill packs for you?"
   ```

## Skill Pack Recommendations

### For Engineers/Developers

**Recommended Packs:**
- **personal-management** - Daily agenda, session summaries, code review prep
- **collaboration** - Meeting notes, code review workflows, async handoffs
- **productivity** - Task triage, time blocking, focus sessions for deep work
- **research** - Quick research for APIs, documentation, bug investigation

**Why:** Engineers need productivity tools for focused work, collaboration for code reviews and team syncs, and research skills for investigating bugs and learning new technologies.

---

### For Product Managers

**Recommended Packs:**
- **personal-management** - Daily agenda, weekly reviews, prioritization
- **communication** - Email drafts, PRDs, stakeholder updates, presentations
- **collaboration** - Meeting notes, 1:1 prep, project status updates
- **productivity** - Decision frameworks, prioritization, time blocking

**Why:** PMs need strong communication for stakeholder management, organization for prioritizing work, and collaboration tools for team alignment.

---

### For Designers

**Recommended Packs:**
- **personal-management** - Daily agenda, design sprint planning
- **communication** - Design briefs, presentation structure, design critique communication
- **productivity** - Time blocking for creative work, focus sessions
- **learning** - Design pattern extraction, skill development

**Why:** Designers need protected creative time, communication tools for design critiques and presentations, and learning capabilities for staying current with design trends.

---

### For Managers/Leaders

**Recommended Packs:**
- **personal-management** - Daily agenda, weekly reviews, prioritizing team work
- **communication** - Team updates, 1:1 prep, performance reviews, email drafts
- **collaboration** - Meeting notes, project status, async handoffs
- **productivity** - Decision frameworks, time blocking, delegation planning

**Why:** Managers need strong communication for team alignment, organization for tracking multiple direct reports, and tools for effective delegation.

---

### For Researchers/Analysts

**Recommended Packs:**
- **research** - Quick research, deep investigation, source verification, synthesis
- **personal-management** - Daily agenda for research projects, session summaries
- **communication** - Research briefs, presentation structure, data visualization communication
- **productivity** - Time blocking for deep work, decision frameworks

**Why:** Researchers need deep work time, strong research tools, and communication skills for presenting findings to stakeholders.

---

### For Founders/Entrepreneurs

**Recommended Packs:**
- **personal-management** - Daily agenda, prioritization across multiple roles
- **productivity** - Decision frameworks, task triage, time blocking
- **communication** - Email drafts, investor updates, team communications
- **collaboration** - Meeting notes, project status, async handoffs

**Why:** Founders wear many hats and need productivity tools to prioritize, communication skills for stakeholders and team, and organization across multiple projects.

---

### For Consultants/Freelancers

**Recommended Packs:**
- **personal-management** - Daily agenda across multiple clients, prioritization
- **communication** - Email drafts, client proposals, deliverable presentations
- **productivity** - Task triage, time blocking for client work
- **learning** - Skill development, pattern extraction for client work

**Why:** Consultants need organization across multiple clients, strong communication for deliverables, and learning capabilities to adapt to new domains.

---

### For Content Creators

**Recommended Packs:**
- **personal-management** - Daily agenda, content calendar planning
- **communication** - Content briefs, email newsletters, social media posts
- **productivity** - Time blocking for creative work, focus sessions
- **research** - Quick research for content topics, source verification

**Why:** Content creators need protected creative time, tools for planning and organizing content, and research skills for fact-checking and topic research.

---

### For Generalists

**Recommended Packs:**
- **personal-management** - Daily agenda, session summaries
- **productivity** - Task triage, time blocking, decision frameworks
- **communication** - Email drafts, meeting notes, presentations
- **research** - Quick research, synthesis

**Why:** Generalists need a balanced toolkit across productivity, communication, and research to handle diverse work.

---

## Confirmation Flow

After inferring role and recommending packs:

```
"Based on your onboarding answers, I think you might be a [Inferred Role].

Here's what I noticed:
- Your role: [role from identity.md]
- Your company: [company from identity.md]
- Keywords that suggested this: [list of matched keywords]

I recommend loading these skill packs:
1. [Pack 1] - [brief description]
2. [Pack 2] - [brief description]
3. [Pack 3] - [brief description]

Does this sound right? Or would you prefer different skill packs?"
```

### User Responses

**If user confirms:**
```
"Great! I'll set up [Pack 1], [Pack 2], and [Pack 3] for you.

[Proceed to load skill packs or add to CLAUDE.md Skills table]

Ready to get started! Try saying:
- 'What can you do?' - See all your skills
- 'What should I focus on today?' - Generate daily agenda"
```

**If user corrects role:**
```
"Got it, you're actually a [User's role]. Let me adjust my recommendations.

[Re-evaluate and recommend packs for correct role]

Does this look better?"
```

**If user wants different packs:**
```
"No problem! Which skill packs would you like?

Available skill packs:
- personal-management - Daily workflows, agenda, summaries
- communication - Writing, emails, presentations
- research - Investigation, fact-finding, synthesis
- collaboration - Meeting notes, team work, project updates
- productivity - Task management, time blocking, focus
- learning - Skill development, pattern extraction

Which ones should I set up for you?"
```

---

## Skill Pack Installation (Future Phase)

**Note:** In Phase 1 (current), only meta-system skills are implemented. Other skill packs will be added in Phases 2-5.

**Current Status:**
- ✅ meta-system - skill-suggester, system-check, workflow-builder, skill-upgrader (partial)
- 🚧 personal-management - Coming in Phase 2
- 🚧 communication - Coming in Phase 3
- 🚧 research - Coming in Phase 3
- 🚧 collaboration - Coming in Phase 5
- 🚧 productivity - Coming in Phase 5
- 🚧 learning - Coming in Phase 5

**For Phase 1:**
```
"Good news! For now, I'll set up the meta-system skill pack, which includes:
- skill-suggester - Maps your requests to the right skill
- system-check - Verifies everything is working correctly

As I learn more skills in the coming phases, I'll automatically recommend new
skill packs based on your role and work patterns."
```

---

## Level Modifiers

**L1 (Guided):**
- Show inference logic step-by-step
- Ask user to confirm before recommending packs

**L2 (Confident):**
- Show recommendation directly, skip inference details
- Assume user will confirm unless they object

**L3 (Anticipatory):**
- (Not applicable - role detection only runs once)

---

## After This Skill

1. Run `system-check.md` to verify all onboarding files are correct
2. Offer to run first task based on user's role (e.g., "Want me to generate your first daily agenda?")
3. Update `personal-os/memory/learnings.md` with detected role and loaded skill packs

---

**End of role-detection skill**
