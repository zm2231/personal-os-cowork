---
name: domain-switch
description: "..'. Explicitly switches active domain. Note: 95%+ of switches happen automatically via context-aware-router - this is for edge cases."
---

# Domain Switch

This skill explicitly switches the active domain context. **Important:** Most domain switches should happen automatically via `context-aware-router` — use this skill only when automatic detection fails or user wants to override.

## When to Run This Skill

Run this skill when:
- User explicitly says "Switch to X domain"
- User says "I'm working on Y now"
- User says "Change context to..."
- User wants to override automatic domain detection
- Automatic domain detection is incorrect

**Note:** Explain to users that they usually don't need to use this skill — the agent detects domains automatically.

---

## Domain Switch Process

### Step 1: Identify Target Domain

**Parse:** User's request to extract domain name or intent

**Examples:**
```
User: "Switch to my Product Team domain"
→ Domain: "product-team"

User: "I'm working on my Spanish learning now"
→ Domain: "learning-spanish"

User: "Change context to my freelance work"
→ Domain: "work-freelance-data-viz" (inferred from "freelance")
```

---

### Step 2: Validate Domain Exists

**Check:** Does `personal-os/domains/{domain-name}.md` exist?

**If domain name is ambiguous:**
```
"Which domain do you mean?

I found multiple matches:
1. work-acme-product (Work)
2. work-freelance-data-viz (Work)

Tell me the number or be more specific."
```

**If domain doesn't exist:**
```
"I don't have a domain for '{domain-name}'.

Current domains:
• {domain-1}
• {domain-2}
• {domain-3}

Want to create this domain? Say: 'Create a domain for {domain-name}'
Or run 'Show me all my domains' to see your full list."
```

---

### Step 3: Load Domain Context

**Read:** `personal-os/domains/{domain-name}.md`

**Extract:**
- Domain name and type
- Description
- Associated people
- Priorities & goals
- Tools & apps
- Communication style (if domain-specific)
- Vocabulary & jargon
- Time preferences

---

### Step 4: Update Active Domain State

**Set:** `personal-os/adaptation/active-domain.md`

```markdown
# Active Domain

**Current Domain:** {domain-name}
**Type:** {domain-type}
**Switched At:** 2026-03-27 14:30:00
**Last Message:** {user's request}

## Loaded Context
- People: {N}
- Priorities: {N}
- Tools: {N}
- Vocabulary: {N}

## Communication Style
{Domain-specific or global}
```

---

### Step 5: Confirm Switch

**Message:**
```
✅ Switched to {domain-name}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Domain Context:
{domain-name} ({domain-type})
{description}

Loaded:
• {N} people: {list top 2-3}
• {N} priorities/goals: {list top 2-3}
• {N} tools/apps: {list top 2-3}
• {N} vocabulary terms defined

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

I'll use this context for your requests.

💡 Tip: You usually don't need to explicitly switch domains — I detect
which domain you're working on from your messages automatically.

What would you like to do in this domain?
```

---

## Optional: Context Preview

**If user wants more details:**

```
Want to see the full domain context?

Here are some key things I know:

People:
• [Person 1] - [role]
• [Person 2] - [role]

Priorities:
1. [Priority 1]
2. [Priority 2]

Tools:
• [Tool 1]
• [Tool 2]

Vocabulary:
• [Term 1] - [definition]
• [Term 2] - [definition]

Want to update any of this? Or let's get started on your task?
```

---

## Optional: Domain-Specific Greeting

**If the domain has been inactive for a while (>7 days):**

```
Welcome back to {domain-name}!

Last time you worked here was {X days ago}.

Quick refresh:
• Your active priorities: [list]
• People you're working with: [list]

Want me to bring you up to speed on anything, or jump straight to work?
```

---

## Integration with QMD

**If domain has a QMD collection:**

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🔍 QMD Collection Ready

I'll search your {domain-name} collection first when you ask questions.

Collection: {domain-name}
Path: personal-os/domains/{type}/{domain-name}/

To add documents:
1. Save markdown files to that directory
2. Run 'qmd update' to index them

Your domain-specific docs will appear in search results.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Level Modifiers

**L1 (Guided):**
- Show full domain context preview
- Explain what's loaded
- Ask if user wants to update anything before proceeding
- Remind that automatic detection is preferred

**L2 (Confident):**
- Show concise confirmation
- Skip full preview (user knows the domain)
- Mention automatic detection briefly

**L3 (Anticipatory):**
- Just confirm: "✅ Switched to {domain-name}. What's next?"
- Assume user knows what they're doing
- Skip explanations (user has done this before)

---

## Error Handling

**If domain file exists but is empty/corrupted:**
```
"The {domain-name} domain file exists but seems incomplete.

Let me check what's wrong...

[Diagnose issue]

Want me to:
1. Fix the domain file?
2. Re-create the domain?
3. Switch to a different domain?"
```

**If domain is archived:**
```
"The {domain-name} domain is archived.

Last active: {date}

Want me to reactivate it? I'll:
• Change status to 'active'
• Update 'last-active' to today
• Load the context

Reactivate? (Yes/No)"
```

**If user is already in the target domain:**
```
"You're already in the {domain-name} domain!

Want to stay here, or switch to something else?

Current domains:
• {domain-1} (active ← you're here)
• {domain-2}
• {domain-3}
```

---

## Automatic Domain Detection Reminder

**After explicit switch:**

If user has switched explicitly >3 times in a session, show helpful reminder:

```
💡 Reminder

You've switched domains explicitly a few times today.

Usually, I detect your domain automatically from your messages, like:

User: "I need to prep for the 2pm meeting"
→ Detected: Work/Product Team domain

User: "What should I study for Spanish?"
→ Detected: Learning/Spanish domain

If automatic detection isn't working well, I can improve it! Tell me:
• "Why did you detect the wrong domain?" (helps me learn)
• "Create a domain for [X]" (if a domain is missing)

Explicit switching is fine, but automatic detection is faster!
```

---

## After This Skill

1. Update `personal-os/adaptation/active-domain.md`
2. Track the switch in `personal-os/memory/patterns.md`
3. Wait for user's next request (should be domain-specific)
4. If user's next request doesn't match the domain, re-evaluate detection

---

## Related Skills

- **context-aware-router** - Automatic domain detection (preferred 95%+ of cases)
- **domain-list** - See all available domains
- **domain-create** - Create new domains
- **onboarding-interview** - Bulk domain discovery

---

## Usage Stats Tracking

**Track in domain file:**
```markdown
## Usage History
### 2026-03-27
- Explicit switch: 14:30 (via domain-switch)
- Last active: 14:30
```

**Track in patterns.md:**
```markdown
## Domain Switching Patterns
- Explicit switches today: {N}
- Automatic switches: {N}
- Most switched domain: {domain-name}
```

---

**End of domain-switch skill**