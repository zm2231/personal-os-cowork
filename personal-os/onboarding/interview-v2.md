---
name: onboarding-interview
description: "Trigger when: 'Set up my PersonalOS', 'Start onboarding', 'I'm new'. Runs 10-question interview to discover domains dynamically and create personal context. v2.0 - Expanded from 5 to 10 questions for domain discovery."
version: 2.0.0
metadata:
  hermes:
    tags: [onboarding, setup, initialization, domains]
---

# PersonalOS Onboarding Interview v2.0

You are running the **10-question onboarding flow** for PersonalOS. This interview discovers your domains dynamically and creates personal context files in `personal-os/context/`, `personal-os/memory/`, `personal-os/domains/`, and `personal-os/adaptation/`.

## When to Run This Skill

Run this skill when:
- User says "Set up my PersonalOS"
- User says "Start onboarding"
- User says "I'm new" or "First time setup"
- `personal-os/context/identity.md` does not exist
- User wants to re-run onboarding (e.g., "Run onboarding again")

**Critical:** Do not skip this. PersonalOS cannot function without these context files.

---

## Onboarding Flow

### Introduction

```
PersonalOS: "Let's get to know you! I'll ask 10 questions — each takes a
minute or two. This helps me discover your domains and adapt to how you
work across different areas of your life.

This should take about 10-15 minutes. Ready when you are!"
```

**Wait for user confirmation.**

---

### Question 1: Who are you and what do you do?

**Ask:**
```
"Question 1: Who are you and what do you do?

Tell me your name, your role, your company (or 'independent'), and a one-sentence
description of your main work."
```

**Extract:**
- Name
- Role (e.g., Software Engineer, Product Manager, Designer, Founder, etc.)
- Company (or "independent" / "freelance" / "consultant")
- One-sentence work description

**Save to:** `personal-os/context/identity.md`

**Template:**
```markdown
# Identity

**Name:** [User's name]

**Role:** [User's role]

**Company:** [Company or "Independent"]

**Work Description:** [One-sentence description]

**Last Updated:** 2026-03-27
```

---

### Question 2: What are your different work areas?

**Ask:**
```
"Question 2: What are your different work areas?

Tell me about all the areas of work you're involved in. For each area, include:

- A name for this area (e.g., 'Product Team', 'Side Project', 'Consulting')
- What you do in this area
- Who you work with (names, roles)
- Tools you use (apps, platforms)

Example answers:
- 'Product Team at Acme Inc - lead frontend dev, work with 5 engineers, use Linear/GitHub'
- 'Freelance consulting - data visualization for startups, work directly with founders, use Figma/Python'
- 'Open source contributor - maintain 3 packages, work with community, use GitHub/Discord'

You can have 1, 2, or more work areas — whatever fits your situation."
```

**Extract:**
- Multiple work domains (detect from user's answer)
- For each domain:
  - Domain name (extract from user's description)
  - Description
  - Team members (names, roles)
  - Tools/apps

**Create:** Domain files for each detected work domain
`personal-os/domains/{domain-name}.md`

---

### Question 3: What areas of your personal life should I help with?

**Ask:**
```
"Question 3: What areas of your personal life should I help with?

These are areas like health, finances, relationships, home management,
hobbies — anything outside of work that you want me to track and help with.

For example:
- Health & fitness (gym, meal prep, medical appointments)
- Finances (budgeting, investments, bills)
- Relationships (family, friends, social calendar)
- Home management (chores, repairs, shopping)
- Hobbies & interests (reading, gaming, music, art)
- Other personal areas that matter to you

You can be as specific or general as you want. Skip if you don't want me
to help with personal stuff yet."
```

**Extract:**
- Multiple personal domains (extract from user's description)
- For each domain:
  - Domain name
  - Description
  - Goals (if mentioned)
  - Tools/apps (if mentioned)

**Create:** Domain files for each detected personal domain
`personal-os/domains/{domain-name}.md`

---

### Question 4: What are you learning right now or planning to learn?

**Ask:**
```
"Question 4: What are you learning right now or planning to learn?

For each learning area, include:
- Topic/skill name
- Current level (beginner, intermediate, advanced)
- Learning method (courses, books, practice, mentorship)
- Goal (why you're learning it, what you want to achieve)

Example:
- 'Python programming - intermediate, taking online course, want to automate work tasks'
- 'Spanish language - beginner, Duolingo + tutor, want to travel in Mexico next year'
- 'Machine learning - beginner, reading papers and building projects, want to transition career'

Skip if you're not learning anything right now."
```

**Extract:**
- Multiple learning domains
- For each domain:
  - Domain name (topic/skill)
  - Current level
  - Learning method
  - Goals

**Create:** Domain files for each detected learning domain
`personal-os/domains/{domain-name}.md`

---

### Question 5: Do you have any creative projects or content creation?

**Ask:**
```
"Question 5: Do you have any creative projects or content creation?

This could include:
- Writing (blogs, newsletters, books)
- Art/Design (drawing, digital art, photography)
- Content creation (YouTube videos, podcasts, social media)
- Music (production, composing, learning instruments)
- Other creative pursuits

Tell me about each project and what stage you're at.

Skip if you don't have any creative projects."
```

**Extract:**
- Multiple creative domains
- For each domain:
  - Domain name (project or creative area)
  - Description
  - Current stage
  - Tools/platforms

**Create:** Domain files for each detected creative domain
`personal-os/domains/{domain-name}.md`

---

### Question 6: What are your top priorities right now?

**Ask:**
```
"Question 6: What are your top priorities right now?

For each priority, tell me:
- The priority itself
- Which domain it belongs to (work/personal/learning/creative/etc.)
- Deadline or timeframe (if applicable)
- Current status

Example:
- 'Launch new feature - Work/Product Team - Deadline: April 15 - Status: In development'
- 'Learn Spanish basics - Learning/Spanish - Goal: Trip in May - Status: Beginner level'
- 'Prepare for 10k race - Personal/Fitness - Goal: June - Status: Training 3x/week'

List as many priorities as you want, but aim for at least 3-5."
```

**Extract:**
- Priorities with domain assignments
- For each priority:
  - Priority description
  - Domain reference
  - Deadline/timeframe
  - Status

**Save to:** Domain files (update priorities in each relevant domain)

---

### Question 7: How do you prefer to communicate?

**Ask:**
```
"Question 7: How do you prefer to communicate?

Tell me about your communication style:
- Do you prefer formal or casual tone?
- Do you like brief messages or detailed explanations?
- Do you prefer async communication or real-time collaboration?
- How direct should I be? (Very direct, moderate, or gentle?)

This applies globally, but if you have different preferences for specific
domains, you can tell me that too."
```

**Extract:**
- Tone (formal vs casual)
- Length preference (brief vs detailed)
- Communication style (async vs real-time)
- Directness level (very direct, moderate, gentle)
- Domain-specific exceptions (if mentioned)

**Save to:** `personal-os/context/communication-style.md`

**Template:**
```markdown
# Communication Style

**Tone:** [Formal / Casual]

**Length Preference:** [Brief / Detailed]

**Style:** [Async / Real-time collaboration]

**Directness:** [Very direct / Moderate / Gentle]

**Domain-Specific Exceptions:**
[Optional - domain-specific styles]

**Last Updated:** 2026-03-27
```

---

### Question 8: How do you manage your time and energy?

**Ask:**
```
"Question 8: How do you prefer to manage your time and energy?

- What are your most productive hours?
- Do you need blocked time for different domains? (e.g., deep work for coding, social hours for meetings)
- How do you handle context switching between different areas?
- Any domain-specific time preferences? (e.g., 'Morning = learning, Afternoon = work')

Skip if you don't have specific preferences yet."
```

**Extract:**
- Productive hours
- Time blocking preferences (domain-specific if mentioned)
- Context switching preferences
- Domain-specific time preferences

**Save to:** `personal-os/context/working-preferences.md`

**Update:** Domain files with time preferences if domain-specific

---

### Question 9: Any internal terms, jargon, or acronyms I should know?

**Ask:**
```
"Question 9: Any internal terms, jargon, or acronyms I should know?

You can group by domain. For example:

Work/Product Team:
- 'PRD - Product Requirements Document'
- 'KPI - Key Performance Indicator'
- 'Sprint - 2-week development cycle'

Learning/Python:
- 'async/await - Asynchronous programming pattern'
- 'promise - Object representing eventual value'

Personal/Finance:
- 'ETF - Exchange-traded fund'
- 'IRA - Individual Retirement Account'

For each domain we've discussed, list 5-10 terms with brief definitions.
Skip domains that don't have specific vocabulary."
```

**Extract:**
- Domain-specific glossaries
- Terms organized by domain

**Update:** Domain files with vocabulary sections

---

### Question 10: Anything else I should know?

**Ask:**
```
"Question 10 (Last one!): Anything else about your life, work, or how you
want to work together that I should know?

This could include:
- Domain-specific preferences we didn't cover
- How you want me to switch between domains (though I usually detect this automatically)
- Any areas where you want more or less autonomy
- Other context that matters to you

Or just say 'Done' if you're ready to finish onboarding!"
```

**Extract:**
- Additional context
- Domain switching preferences (if any)
- Autonomy level preferences (domain-specific if mentioned)
- Any other notes

---

## After All 10 Questions: Complete Setup

### Summary

**Show domain summary:**
```
✅ Setup complete!

I've discovered and created domains for your life:

Work Domains ({N}):
• {domain-name-1}
• {domain-name-2}

Personal Domains ({N}):
• {domain-name-3}
• {domain-name-4}

Learning Domains ({N}):
• {domain-name-5}

Creative Domains ({N}):
• {domain-name-6}

Total: {N} domains created

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Global Context:
✓ Your identity: [Name], [Role] at [Company]
✓ Your communication style: [Tone], [Length], [Style]
✓ Your working preferences: [Productive hours], [Time blocking]

Domain-Specific Context:
✓ {N} work areas with team directories and tools
✓ {N} personal areas with goals and preferences
✓ {N} learning areas with progress and methods
✓ {N} creative projects with stage and platforms

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

How I'll work with you:

1. **Automatic Domain Detection**: I'll detect which domain you're
   working on from your messages — no need to explicitly switch.

   Example:
   You: "Prep for my 2pm meeting"
   → I detect: Work/Product Team domain
   → I load: Team directory, meeting notes, project status

2. **Dynamic Domain Creation**: If you start working on a new area
   frequently, I'll suggest creating a domain for it.

3. **Context-Aware Responses**: I'll remember domain-specific vocabulary,
   people, tools, and preferences for each area.

I'm starting at autonomy level 1 (Guardian) — I'll confirm actions
before executing. As we work together, I'll learn your patterns and
level up my skills.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Try saying:
• "What can you do?" — See all available skills
• "What should I focus on today?" — Generate daily agenda for your active priorities
• "Show me all my domains" — See your domain overview
• "Help me with [domain-specific task]" — I'll detect the domain automatically

Ready to get started!
```

---

## Create Additional Files

**Create:** `personal-os/adaptation/autonomy-level.md`

```markdown
# Autonomy Level

**Current:** Level 1 (Guardian)

**What This Means:**
- I will confirm ALL actions before executing
- Example: "I'm about to send this email. Confirm?"
- Best for: New users, learning how we work together

**How to Change:**
- Say "Be more autonomous" to increase level
- Say "Be more careful" to decrease level
- Levels: 1 (Guardian), 2 (Supervised), 3 (Trusted), 4 (Autonomous)

**Last Updated:** 2026-03-27
```

**Create:** `personal-os/adaptation/skill-levels.md`

```markdown
# Skill Levels

All skills start at Level 1 (Guided).

As we work together, skills will level up based on:
- Successful usage count
- Your positive feedback
- Pattern detection

**Current Levels:**
- domain-create: level-1
- domain-list: level-1
- context-aware-router: level-1
- [Add more skills as they are implemented]

**Last Updated:** 2026-03-27
```

**Create:** `personal-os/memory/patterns.md`

```markdown
# Work Patterns

*This file auto-updates as I detect recurring workflows.*

## Detected Patterns
- Domain switching patterns
- Task patterns (will emerge as we work together)
- Communication patterns (will emerge as we work together)

## Domain Usage History
[Will track which domains are active over time]

**Last Updated:** 2026-03-27
```

**Create:** `personal-os/memory/learnings.md`

```markdown
# Learnings

*This file grows from session summaries and feedback.*

## 2026-03-27
- Initial onboarding completed
- User preferences and context established
- {N} domains created dynamically

**Last Updated:** 2026-03-27
```

**Create:** `personal-os/adaptation/feedback.md`

```markdown
# Feedback Log

*This tracks your corrections and preferences over time.*

## 2026-03-27
- Onboarding completed
- No feedback yet

**Last Updated:** 2026-03-27
```

**Create:** `personal-os/adaptation/preferences.md`

```markdown
# Preferences

*This file stores learned defaults and preferences.*

## Domain Detection
**Mode:** Automatic (default) - I detect domains from your messages
**Fallback:** Explicit switching available if needed

## Morning Agenda
**Auto-generate:** false (user prefers manual planning, for now)

**Last Updated:** 2026-03-27
```

---

## After Onboarding

1. **Run `role-detection.md`** to infer user's role and suggest skill packs
2. **Run `system-check.md`** to verify all files were created correctly
3. **Ask user:** "What would you like to do first?" — Suggest 2-3 options based on their domains

---

## Level Modifiers

**L1 (Guided):**
- Run all 10 questions sequentially
- Show each domain file after creating
- Ask user to confirm before proceeding to next question
- Show full summary at end

**L2 (Confident):**
- Batch related questions (e.g., Q2-Q5: Domain discovery)
- Show summary at end, not after each file
- Auto-create domains without confirmation (unless ambiguous)

**L3 (Anticipatory):**
- Skip questions where user has already provided context (from conversation history)
- Pre-populate answers if context is available
- Focus only on missing information

---

## Migration Guide for Existing Users

**If user is re-running onboarding:**

```
"You already have existing context and domains.

I can:
1. **Add new domains** from your answers (keeps existing ones)
2. **Update existing domains** with new information
3. **Start fresh** (replace everything - backup created)

Which would you prefer?"
```

**If user chooses to keep existing:**
- Read existing domain files
- Update with new information
- Only create new domains for newly detected areas
- Preserve existing preferences and learnings

---

**End of onboarding-interview v2.0 skill**
