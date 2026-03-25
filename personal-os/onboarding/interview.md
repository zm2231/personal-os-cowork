---
name: onboarding-interview
description: "Trigger when: 'Set up my PersonalOS', 'Start onboarding', 'I'm new'. Runs 5-question interview to create personal context."
version: 1.0.0
metadata:
  hermes:
    tags: [onboarding, setup, initialization]
---

# PersonalOS Onboarding Interview

You are running the 5-question onboarding flow for PersonalOS. This interview creates the user's personal context files in `personal-os/context/`, `personal-os/memory/`, and `personal-os/adaptation/`.

## When to Run This Skill

Run this skill when:
- User says "Set up my PersonalOS"
- User says "Start onboarding"
- User says "I'm new" or "First time setup"
- `personal-os/context/identity.md` does not exist

**Critical:** Do not skip this. PersonalOS cannot function without these context files.

## Onboarding Flow

### Introduction

```
PersonalOS: "Let's get to know you. I'll ask 5 questions—each takes a minute or two.
            This helps me adapt to how you work."
```

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

**Last Updated:** 2026-03-26
```

---

### Question 2: What are your top 3 priorities right now?

**Ask:**
```
"Question 2: What are your top 3 priorities right now?

These could be active projects, goals, or focus areas. I'll use these to help you
plan your days and stay focused."
```

**Extract:**
- Priority 1 (project/goal + deadline if any)
- Priority 2 (project/goal + deadline if any)
- Priority 3 (project/goal + deadline if any)

**Save to:** `personal-os/memory/current-priorities.md`

**Template:**
```markdown
# Current Priorities

## Priority 1
**Project:** [Project/goal name]
**Deadline:** [Date if applicable, or "Ongoing"]
**Status:** Active

## Priority 2
**Project:** [Project/goal name]
**Deadline:** [Date if applicable, or "Ongoing"]
**Status:** Active

## Priority 3
**Project:** [Project/goal name]
**Deadline:** [Date if applicable, or "Ongoing"]
**Status**: Active

**Last Updated:** 2026-03-26
```

---

### Question 3: How do you prefer to communicate?

**Ask:**
```
"Question 3: How do you prefer to communicate?

Tell me about your communication style:
- Do you prefer formal or casual tone?
- Do you like brief messages or detailed explanations?
- Do you prefer async communication or real-time collaboration?
- How direct should I be? (Very direct, moderate, or gentle?)"
```

**Extract:**
- Tone (formal vs casual)
- Length preference (brief vs detailed)
- Communication style (async vs real-time)
- Directness level (very direct, moderate, gentle)

**Save to:** `personal-os/context/communication-style.md`

**Template:**
```markdown
# Communication Style

**Tone:** [Formal / Casual]

**Length Preference:** [Brief / Detailed]

**Style:** [Async / Real-time collaboration]

**Directness:** [Very direct / Moderate / Gentle]

**Notes:**
[User's additional notes about communication]

**Last Updated:** 2026-03-26
```

---

### Question 4: Who do you work with most?

**Ask:**
```
"Question 4: Who do you work with most?

Tell me about 3-5 key people you collaborate with regularly. For each person,
include:
- Their name
- Their role (e.g., manager, peer, direct report, client, etc.)
- How we work together (e.g., daily standups, weekly syncs, email, etc.)

This helps me understand your team and context."
```

**Extract:**
For each person:
- Name
- Role (manager, peer, direct report, client, stakeholder, etc.)
- Collaboration pattern (meetings, email, async, etc.)

**Save to:** `personal-os/context/team-directory.md`

**Template:**
```markdown
# Team Directory

## [Person 1 Name]
**Role:** [Manager / Peer / Direct Report / Client / Other]
**Collaboration:** [e.g., Daily standup, weekly sync, email, Slack, etc.]
**Notes:** [Optional notes about working style]

## [Person 2 Name]
**Role:** [Manager / Peer / Direct Report / Client / Other]
**Collaboration:** [e.g., Daily standup, weekly sync, email, Slack, etc.]
**Notes:** [Optional notes about working style]

[Add more people as needed...]

**Last Updated:** 2026-03-26
```

---

### Question 5: Any internal terms, jargon, or acronyms I should know?

**Ask:**
```
"Question 5: Any internal terms, jargon, or acronyms I should know?

List 5-10 terms that are specific to your company, industry, or projects.
For each term, provide a brief definition. This helps me understand your
vocabulary and context."
```

**Extract:**
- Term list with definitions

**Save to:** `personal-os/context/glossary.md`

**Template:**
```markdown
# Glossary

## [Term 1]
**Definition:** [Brief definition]

## [Term 2]
**Definition:** [Brief definition]

[Add more terms as needed...]

**Last Updated:** 2026-03-26
```

---

### After All 5 Questions: Complete Setup

**Create Additional Files:**

1. **`personal-os/context/working-preferences.md`** (if not explicitly covered)

```markdown
# Working Preferences

**Work Hours:** [e.g., 9am-5pm EST, or "flexible"]

**Meeting Style:** [e.g., "Prefer async over meetings" or "Regular standups"]

**Task Management:** [e.g., Linear, Notion, Trello, or "None"]

**Preferred Meeting Times:** [e.g., "Mornings for deep work, afternoons for meetings"]

**Last Updated:** 2026-03-26
```

2. **`personal-os/adaptation/autonomy-level.md`**

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

**Last Updated:** 2026-03-26
```

3. **`personal-os/adaptation/skill-levels.md`**

```markdown
# Skill Levels

All skills start at Level 1 (Guided).

As we work together, skills will level up based on:
- Successful usage count
- Your positive feedback
- Pattern detection

**Current Levels:**
- skill-suggester: level-1
- system-check: level-1
- [Add more skills as they are implemented]

**Last Updated:** 2026-03-26
```

4. **`personal-os/memory/patterns.md`**

```markdown
# Work Patterns

*This file auto-updates as I detect recurring workflows.*

## Detected Patterns
*None yet - patterns will emerge as we work together.*

**Last Updated:** 2026-03-26
```

5. **`personal-os/memory/learnings.md`**

```markdown
# Learnings

*This file grows from session summaries and feedback.*

## 2026-03-26
- Initial onboarding completed
- User preferences and context established

**Last Updated:** 2026-03-26
```

6. **`personal-os/adaptation/feedback.md`**

```markdown
# Feedback Log

*This tracks your corrections and preferences over time.*

## 2026-03-26
- No feedback yet

**Last Updated:** 2026-03-26
```

7. **`personal-os/adaptation/preferences.md`**

```markdown
# Preferences

*This file stores learned defaults and preferences.*

## Morning Agenda
**Auto-generate:** false (user prefers manual planning)

**Last Updated:** 2026-03-26
```

8. **`personal-os/adaptation/auto-emergence.md`**

```markdown
# Auto-Emerged Skills

*This stores workflows and skills that self-created from your patterns.*

## Pending Approval
*No patterns detected yet.*

**Last Updated:** 2026-03-26
```

---

## Completion Message

After all files are created, show this summary:

```
✅ Setup complete!

Here's what I now know about you:

✓ Your identity: [Name], [Role] at [Company]
✓ Your priorities: [Priority 1], [Priority 2], [Priority 3]
✓ Your communication style: [Tone], [Length], [Style]
✓ Your team: [Number] key collaborators
✓ Your vocabulary: [Number] internal terms defined

I'm starting at autonomy level 1 (Guardian)—I'll confirm actions before executing.
As we work together, I'll learn your patterns and level up my skills.

Try saying:
- "What can you do?" - See all available skills
- "What should I focus on today?" - Generate daily agenda
- "Help me with..." - I'll suggest the right skill

Ready when you are!
```

---

## Role Detection (Next Step)

After onboarding completes, load and run `role-detection.md` skill to:
1. Infer user's likely role from their answers
2. Suggest relevant skill packs
3. Offer to install recommended packs

---

## Level Modifiers

**L1 (Guided):**
- Run all 5 questions sequentially
- Show each file after saving
- Ask user to confirm before proceeding to next question

**L2 (Confident):**
- Batch questions if user wants faster setup
- Show summary at end, not after each file

**L3 (Anticipatory):**
- (Not applicable - onboarding only runs once)

---

## After This Skill

1. Run `role-detection.md` to infer user's role and suggest skill packs
2. Run `system-check.md` to verify all files were created correctly
3. Ask user: "What would you like to do first? [Suggest 2-3 options]"

---

**End of onboarding-interview skill**
