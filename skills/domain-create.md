---
name: domain-create
description: "Trigger when: 'Create a domain for X', 'Set up a new domain for...', 'Track this separately'. Creates a new domain file with user-defined or AI-suggested context."
version: 1.0.0
metadata:
  hermes:
    tags: [domains, setup, context-awareness]
---

# Domain Creation

This skill creates a new domain file to track context for a specific area of the user's life (work, personal, learning, creative, etc.).

## When to Run This Skill

Run this skill when:
- User says "Create a domain for X"
- User says "Set up a new domain for..."
- User says "Track this separately"
- User accepts a domain suggestion from `domain-suggest.md`
- User wants to isolate context for a new project or area

## Domain Creation Flow

### Step 1: Understand What the User Wants

**Ask:**
```
"What should I call this domain? Give it a name that clearly identifies
the area (e.g., 'Product Team', 'Freelance Consulting', 'Spanish Learning').

If you want me to suggest a name based on what you've told me about this area,
just say 'Suggest a name'."
```

**Wait for user response.**

---

### Step 2: Determine Domain Type

**Ask:**
```
"What type of domain is this?

Options:
1. Work - Professional projects, teams, clients
2. Personal - Health, finances, relationships, home management
3. Learning - Courses, skills, research, study
4. Creative - Writing, art, content creation, music
5. Other - Something else

Just tell me the number or type name."
```

**Wait for user response.**

---

### Step 3: Gather Domain Context

**Ask:**
```
"Now tell me about this domain. I need to know:

1. **Description:** What is this domain about? (2-3 sentences)
2. **Associated People:** Who do you work with or interact with in this domain?
3. **Priorities/Goals:** What are you trying to achieve in this area?
4. **Tools & Apps:** What tools, platforms, or apps do you use here?
5. **Communication Style:** Any different communication preferences for this domain? (Optional)

You can answer all at once, or I'll ask one question at a time.

If you want me to skip any of these, just say 'Skip'."
```

**Wait for user response.**

**Extract:**
- Domain description
- People (names and roles if provided)
- Priorities/goals
- Tools/apps
- Communication style (if different from global)

---

### Step 4: Ask About Domain-Specific Vocabulary

**Ask:**
```
"Any specific terms, acronyms, or jargon I should know for this domain?

For example:
- Work: 'PRD, KPI, OKR, sprint, retro'
- Learning: 'API, async, promise, closure'
- Personal: 'ETF, IRA, macros, meal prep'

Or just say 'Skip' if not applicable."
```

**Wait for user response.**

**Extract:**
- Domain-specific glossary (terms + definitions if provided)

---

### Step 5: Ask About Time Preferences (Optional)

**Ask:**
```
"Any time or scheduling preferences for this domain?

For example:
- 'Do all work-related tasks in the morning'
- 'Study Spanish in the evenings'
- 'Budget time for creative work on weekends'

Or just say 'Skip' if not applicable."
```

**Wait for user response.**

**Extract:**
- Time preferences (if provided)

---

### Step 6: Create Domain File

**Create:** `personal-os/domains/{domain-name}.md`

**Template:**
```markdown
---
name: {domain-name}
type: {work|personal|learning|creative|other}
created: 2026-03-27
last-active: 2026-03-27
status: active
---

# {Domain Name}

## Description
{Description from user}

## Type
{Domain type}

## Associated People
{List of people, with roles if provided}

## Priorities & Goals
{Priorities and goals from user}

## Tools & Apps
{Tools and apps from user}

## Communication Style
{Domain-specific communication style, or "Same as global preferences"}

## Time Preferences
{Time preferences, or "No specific preferences"}

## Vocabulary & Jargon
{Domain-specific glossary, or "None"}

## Notes
{Any additional notes}

---

## Usage History
### 2026-03-27
- Domain created
- Initial context established

## Learnings
*Learnings will accumulate as we work together in this domain.*
```

---

### Step 7: Create QMD Collection (Optional)

**Ask:**
```
"Should I create a QMD search collection for this domain?

This lets me quickly search through documents, notes, and resources
specific to this domain.

If yes, I'll create a collection at:
~/.hermes/personal-os/{domain-type}/{domain-name}/

You can add markdown files there and I'll search them when we're
working in this domain.

Create QMD collection? (Yes/No)"
```

**If Yes:**
```bash
# Create directory
mkdir -p ~/.hermes/personal-os/{domain-type}/{domain-name}

# Add QMD collection
qmd collection add ~/.hermes/personal-os/{domain-type}/{domain-name} --name {domain-name}
```

**Update domain file:**
```markdown
## QMD Collection
Collection: {domain-name}
Path: ~/.hermes/personal-os/{domain-type}/{domain-name}/
```

---

### Step 8: Completion Message

```
✅ Domain '{domain-name}' created!

Here's what I now know about this domain:

✓ Type: {domain-type}
✓ Description: {description}
✓ Associated People: {number} people
✓ Priorities: {number} priorities/goals
✓ Tools: {number} tools/apps
✓ Vocabulary: {number} terms defined

You can now say things like:
- "In the {domain-name} context, help me with..."
- "What are my priorities for {domain-name}?"
- "Show me my {domain-name} vocabulary"
- "Update my {domain-name} goals..."

I'll automatically detect when you're working in this domain and load
the right context.

Want to do anything else with this domain, or create another one?
```

---

## Level Modifiers

**L1 (Guided):**
- Ask each question sequentially
- Show domain file after creation
- Confirm QMD collection creation before proceeding

**L2 (Confident):**
- Batch questions (ask 2-5 at once)
- Show summary at end, not after each file
- Auto-create QMD collection if user seems tech-savvy

**L3 (Anticipatory):**
- Infer domain type from user's description
- Skip optional questions if context is already clear
- Pre-populate QMD collection with template files

---

## After This Skill

1. Update `personal-os/memory/patterns.md` with new domain
2. Ask user: "What would you like to do first in this domain?"
3. Suggest relevant actions based on domain type:
   - Work: "Set up project status tracking?"
   - Learning: "Create a learning plan?"
   - Personal: "Add any habits or routines?"
   - Creative: "Outline your first project?"

---

## Domain File Validation

**Before completing:**

1. ✅ Domain name is valid (no special characters except hyphens/underscores)
2. ✅ Domain type is valid (work/personal/learning/creative/other)
3. ✅ Domain description is at least 1 sentence
4. ✅ File created at correct path: `personal-os/domains/{domain-name}.md`
5. ✅ QMD collection created (if user opted in)

---

**End of domain-create skill**
