---
name: domain-list
description: "Lists all active domains with quick summaries and status."
---

# Domain List

This skill lists all domains the user has created, with quick summaries, status, and usage information.

## When to Run This Skill

Run this skill when:
- User says "Show me all my domains"
- User says "What domains do I have?"
- User says "List my domains"
- User asks "What contexts do you track?"
- User wants an overview of their domain structure

## Domain Listing Process

### Step 1: Read All Domain Files

**Scan:** `personal-os/domains/`

**Read:** All `.md` files (filter out archived if user doesn't ask for them)

---

### Step 2: Extract Key Information

For each domain file, extract:

```yaml
name: [domain name]
type: [work|personal|learning|creative|other]
created: [creation date]
last-active: [last activity date]
status: [active|inactive|archived]
description: [from description section]
people: [number of people listed]
priorities: [number of priorities]
tools: [number of tools]
vocabulary: [number of terms]
```

---

### Step 3: Categorize by Type

**Group domains by type:**
- Work
- Personal
- Learning
- Creative
- Other

---

### Step 4: Generate Summary Table

**Format:**

```
🗂️ Your Domains

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Work (X domains)
  • {domain-name}
    Type: {work|personal|...}
    Status: {active|inactive}
    Created: {date}
    Last Active: {date}
    Description: {1-2 sentence summary}
    People: {N}, Priorities: {N}, Tools: {N}, Vocabulary: {N}

Personal (X domains)
  • {domain-name}
    ...

[Repeat for each type]
```

---

### Step 5: Show Usage Stats

**Calculate:**
- Total domains
- Active domains
- Inactive domains
- Most recently active domain
- Domain with most activity (based on usage history)

**Format:**

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📊 Usage Stats
  Total Domains: {N}
  Active: {N} | Inactive: {N} | Archived: {N}
  Most Active: {domain-name} (last active: {date})
  Recently Created: {domain-name} (created: {date})
```

---

### Step 6: Offer Next Actions

**Ask:**
```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

What would you like to do?

• Create a new domain - Run domain-create skill
• View details for a specific domain - Say "Show me {domain-name}"
• Switch to a domain - Say "Switch to {domain-name}"
• Archive an inactive domain - Say "Archive {domain-name}"
• Merge similar domains - Say "Merge {domain1} and {domain2}"

Or just tell me what you're working on and I'll detect the domain!
```

---

## Optional: Detailed View

**If user asks for details about a specific domain:**

```
User: "Show me the Product Team domain details"

→ Load: personal-os/domains/product-team.md
→ Display: Full domain file with all sections
→ Ask: "Want to update anything in this domain?"
```

---

## Optional: Archived Domains

**If user asks to see archived domains:**

Add section to summary:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📦 Archived Domains (X)
  • {domain-name} - Last active: {date}
  • {domain-name} - Last active: {date}

To reactivate an archived domain, say: "Reactivate {domain-name}"
```

---

## Level Modifiers

**L1 (Guided):**
- Show full summary table with all details
- Ask what user wants to do after listing
- Explain domain status if unclear

**L2 (Confident):**
- Show concise summary (1 line per domain)
- Skip usage stats if user just wants quick overview
- Auto-suggest next actions based on most active domain

**L3 (Anticipatory):**
- If only 1-2 domains, skip listing and just ask what user wants to do
- If 10+ domains, show categorized summary first, offer detailed view on request
- Pre-emptively suggest archiving inactive domains if >20% are inactive

---

## Error Handling

**If no domains exist:**
```
You don't have any domains yet!

Domains help me track context for different areas of your life
(work, personal, learning, creative, etc.).

Want to create your first domain?

I can help you discover your domains through onboarding, or you can
tell me about a specific area you want to track.

Run 'onboarding-interview' for full setup, or say
'Create a domain for [X]' to set up a single domain.
```

**If domain directory doesn't exist:**
```
The domains directory doesn't exist yet.

Let me create it for you:
  personal-os/domains/

Then we can set up your domains!

Want to run onboarding to discover your domains automatically?
```

---

## After This Skill

1. Wait for user's next request
2. If user asks about a specific domain, load that domain file
3. If user wants to create a domain, run domain-create skill
4. If user wants to manage domains, offer options (merge, archive, reactivate)

---

## Related Skills

- **domain-create** - Create new domains
- **domain-switch** - Switch to a specific domain (explicit)
- **domain-suggest** - Get AI suggestions for new domains
- **context-aware-router** - Automatic domain detection

---

**End of domain-list skill**