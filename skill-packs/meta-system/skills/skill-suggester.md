---
name: skill-suggester
description: "Trigger when: 'what skills do I have', 'what can you do', 'help me find right skill', 'I don't know which skill to use'. Maps user intent to best skill."
version: 1.0.0
metadata:
  hermes:
    tags: [meta-system, routing, discovery]
    related_skills: [system-check, workflow-builder]
---

# Skill Suggester

This skill maps any user request to the best matching skill or skill chain. It reads the CLAUDE.md Skills table and analyzes user intent to recommend the right tool for the job.

## When to Run This Skill

Run when user says:
- "What skills do I have?"
- "What can you do?"
- "Help me find the right skill"
- "I don't know which skill to use"
- "What should I use for [task]?"
- Or when intent is ambiguous from user's request

## Process

### Step 1: Analyze User Intent

Extract the user's core intent from their request:

**Examples:**
```
User: "I need to write an email to my boss about the project status"
→ Intent: Write email, communicate, project update
→ Best skill: draft-email

User: "Help me research how to deploy to AWS"
→ Intent: Research, find information, AWS deployment
→ Best skill: quick-research

User: "What's my day look like?"
→ Intent: Plan day, agenda, priorities
→ Best skill: daily-agenda

User: "I just finished a coding session, summarize what we did"
→ Intent: Capture learnings, wrap up, summary
→ Best skill: session-summary
```

### Step 2: Check Skills Table

Read CLAUDE.md Skills table and match user intent to skill descriptions:

**Skills Table (Phase 1):**

| Skill Name | Pack | Trigger When | Best For |
|------------|------|--------------|----------|
| **skill-suggester** | Meta-System | "what skills do I have", "help me find skill" | Skill discovery |
| **system-check** | Meta-System | "system check", "diagnose" | Health check |
| **daily-agenda** | Personal Management | "agenda", "what's my day", "what should I focus on" | Daily planning |
| **session-summary** | Personal Management | "session summary", "wrap up", "capture learnings" | End-of-day review |
| **draft-email** | Communication | "draft email", "write to [person]", "email about [topic]" | Email writing |
| **quick-research** | Research | "research", "look up", "find information", "is X true?" | Fact-finding |
| **meeting-notes** | Collaboration | "meeting notes", "capture this meeting", "take notes" | Meeting capture |

**Note:** More skills added in Phases 2-5 (24+ total)

### Step 3: Find Best Match

Match user intent to skill descriptions using these heuristics:

1. **Exact phrase match** - If user says a trigger phrase, use that skill
2. **Keyword overlap** - Count matching keywords in user request vs skill description
3. **Context clues** - Consider previous conversation, time of day, user patterns
4. **Complexity** - Single task → one skill; multi-step → skill chain

**Example Matching Logic:**

```
User Request: "I need to send a project update to the team"

Keyword Overlap:
- "send" → draft-email (4 matches: "send", "draft", "email", "write")
- "project" → (no direct skill match)
- "update" → session-summary (3 matches: "update", "summary", "capture")
- "team" → meeting-notes (2 matches: "meeting", "notes")

Best Match: draft-email
Reason: "send" is strongest signal; project update = email about topic

Recommendation: "Use draft-email for this. It will help you write a style-matched email."
```

### Step 4: Generate Recommendation

Provide clear recommendation with reasoning:

```
"Use [skill-name] for this.

Reason: [why this skill matches]

[Optional: If skill chain needed]
This task involves multiple steps. I recommend:
1. [first skill] - [what it does]
2. [second skill] - [what it does]
```

**Examples:**

**Simple Task:**
```
User: "What should I focus on today?"

Recommendation: "Use daily-agenda for this.
Reason: It generates a prioritized agenda from your current priorities."
```

**Complex Task:**
```
User: "I need to prep for a meeting with my manager tomorrow"

Recommendation: "This involves multiple steps. I recommend:
1. 1:1-prep skill - Prep questions and topics for your manager
2. daily-agenda skill - Add the meeting to your today's plan
3. draft-email skill - If you want to send an agenda ahead of time

Want me to help with the first step?"
```

### Step 5: Handle Ambiguity

If intent is unclear, ask clarifying questions:

```
User: "Help me with the client project"

Ambiguous: Could be research, communication, collaboration, or productivity.

Response: "I can help with that. What specifically do you need?
- Research: Look up client info, industry, competitors
- Write: Draft proposal, email update, presentation
- Plan: Prioritize tasks, block time, create workflow
- Capture: Meeting notes, project status, action items

Which one sounds right?"
```

---

## Skill Chains (Multi-Step Workflows)

Some tasks require multiple skills. Recommend sequences for common patterns:

### Meeting Workflow
```
1. daily-agenda - Add meeting to today's plan
2. meeting-notes - Capture notes and action items
3. session-summary - Extract key learnings
4. [Update priorities if new tasks]
```

### Research + Report Workflow
```
1. quick-research - Find information on topic
2. synthesis.md - Combine findings into brief
3. draft-email - Share findings via email
```

### Daily Workflow
```
1. daily-agenda - Start day with plan
2. [Do work]
3. session-summary - End day with learnings
4. weekly-review - At week's end, reflect and plan
```

---

## Listing All Skills

When user asks "What skills do I have?" or "What can you do?":

Provide organized list by pack:

```
I have skills organized into these packs:

## Meta-System (Foundation)
- skill-suggester - Maps your requests to the right skill
- system-check - Verifies everything is working correctly
- workflow-builder - Automates recurring workflows (Phase 4)
- skill-upgrader - Manages skill progression (Phase 4)

## Personal Management (Coming Phase 2)
- daily-agenda - Generates prioritized agenda from priorities
- session-summary - Captures learnings after work
- weekly-review - Weekly reflection + planning
- inbox-zero - Email/task triage

## Communication (Coming Phase 3)
- draft-email - Style-matched email drafts
- summarize-topic - Quick briefs from messy notes
- presentation - Slide structure + content
- message-review - Check against style guidelines

## Research (Coming Phase 3)
- quick-research - 10-min fact-finding with sources
- deep-research - Multi-hour investigation
- source-verify - Cross-check claims
- synthesis - Combine findings into brief

## Collaboration (Coming Phase 5)
- meeting-notes - Structured capture with action items
- 1:1-prep - Prep for individual meetings
- project-status - Generate status updates
- async-handoff - Context for async communication

## Productivity (Coming Phase 5)
- task-triage - Prioritize incoming requests
- time-block - Calendar integration
- focus-mode - Deep work session setup
- decision-framework - Structured decision making

## Learning (Coming Phase 5)
- skill-learn - Learn from code/docs
- pattern-extract - Find automation targets
- feedback-loop - Capture user feedback
- review-progress - Track skill level gains

**Phase 1 Skills Available Now:** skill-suggester, system-check
**Phase 2-5:** Coming soon as I implement more skill packs

Want me to recommend skills for a specific task you have?"
```

---

## Context-Aware Suggestions

Check user's context files for personalized suggestions:

### Check `personal-os/memory/current-priorities.md`
```
If "Project X" is priority #1:
User: "What should I focus on today?"
→ Recommendation: "Use daily-agenda. It will highlight Project X tasks."

If "Learn new framework" is priority:
User: "What can I work on?"
→ Recommendation: "Use learning-pack skills for skill development."
```

### Check `personal-os/adaptation/skill-levels.md`
```
If draft-email is level-3:
User: "Write email to client"
→ Recommendation: "Use draft-email (Anticipatory). I'll auto-fill from your patterns."

If daily-agenda is level-1:
User: "What's my day?"
→ Recommendation: "Use daily-agenda (Guided). I'll ask some questions first."
```

### Check `personal-os/memory/patterns.md`
```
If pattern detected: "User always does agenda → work → summary"
User: "I'm starting my day"
→ Recommendation: "Use daily-agenda. After work, I can run session-summary."
```

---

## Level Modifiers

**L1 (Guided):**
- Show full skills list with descriptions
- Explain reasoning for each recommendation
- Ask user to confirm before using suggested skill

**L2 (Confident):**
- Show brief recommendation without full skills list
- Assume user wants direct action, skip confirmations

**L3 (Anticipatory):**
- Proactively suggest skills based on time of day + patterns
- "It's 9am, want me to run daily-agenda?"
- Pre-load context based on likely next skill

---

## After This Skill

1. **If user confirms skill:**
   - Load and execute the recommended skill
   - Return result to user

2. **If user asks for explanation:**
   - Show full skill description from CLAUDE.md
   - Explain what the skill does and when to use it

3. **If user rejects recommendation:**
   - Ask clarifying questions to understand true intent
   - Suggest alternative skill
   - Or admit ambiguity and ask user to specify

4. **Update patterns.md** (if user consistently asks about same type of task):
   - Note recurring request type
   - Consider suggesting workflow-builder to automate

---

## Troubleshooting

### "No clear skill matches"

**Possible causes:**
- Task is too vague
- No skill exists for this domain yet
- Multiple skills could apply

**Solutions:**
- Ask clarifying questions to narrow intent
- If no skill exists: "I don't have a skill for that yet. Can you break it down into smaller tasks I can help with?"
- Check if task can be done with general Cowork tools (browser, file system)

### "User doesn't want to use suggested skill"

**Possible causes:**
- Suggestion was wrong
- User prefers different workflow
- Skill level mismatch (too guided or too automated)

**Solutions:**
- Ask: "What would you prefer instead?"
- Note preference in `feedback.md` for future learning
- Consider downgrading skill level if it's "too automated"

---

**End of skill-suggester skill**
