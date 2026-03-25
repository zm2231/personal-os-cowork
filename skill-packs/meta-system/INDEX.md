# Meta-System Skill Pack

Foundation skills for PersonalOS core functionality. These skills handle routing, diagnostics, and system management.

---

## Overview

The Meta-System pack provides the essential infrastructure that makes PersonalOS work:
- **Intent routing** - Maps user requests to the right skill
- **Diagnostics** - Verifies system health and configuration
- **Workflow automation** - Detects recurring patterns and creates compound skills (Phase 4)
- **Skill progression** - Manages L1→L2→L3 skill leveling (Phase 4)

---

## Skills

### ✅ skill-suggester
**Purpose:** Map any user request to best matching skill or skill chain

**When to Use:**
- "What skills do I have?"
- "What can you do?"
- "Help me find the right skill"
- "I don't know which skill to use"
- "What should I use for [task]?"

**How It Works:**
1. Analyzes user intent from request
2. Checks CLAUDE.md Skills table
3. Matches keywords to skill descriptions
4. Recommends best skill or skill chain
5. Handles ambiguity by asking clarifying questions

**Level Modifiers:**
- **L1:** Shows full skills list, explains reasoning
- **L2:** Brief recommendation without full list
- **L3:** Proactively suggests based on time + patterns

**File:** `skills/skill-suggester.md`

---

### ✅ system-check
**Purpose:** Health check + diagnostics for PersonalOS

**When to Use:**
- "System check"
- "Diagnose"
- "Is everything working?"
- "Verify my setup"
- After onboarding to confirm files created

**How It Works:**
1. Verifies directory structure exists
2. Checks all context files (Layer 1: Identity)
3. Checks all memory files (Layer 2: What matters)
4. Checks all adaptation files (Layer 3: How it improves)
5. Verifies skills configuration in CLAUDE.md
6. Reads current state (autonomy, skill levels, priorities)
7. Generates detailed status report
8. Provides remediation steps for any issues

**Level Modifiers:**
- **L1:** Full detailed report, explain each section
- **L2:** Summary status, highlight issues only
- **L3:** Auto-run weekly, alert only if problems

**File:** `skills/system-check.md`

---

### 🚧 workflow-builder (Coming Phase 4)
**Purpose:** Automate recurring patterns detected in work

**When to Use:**
- "Automate this"
- "Create a workflow"
- "I do this a lot"

**How It Will Work:**
1. Read `personal-os/memory/patterns.md`
2. Identify sequence of skills used repeatedly
3. Generate compound skill that chains those steps
4. Save to `personal-os/adaptation/auto-emergence.md`
5. Ask user for approval

**File:** `skills/workflow-builder.md`

---

### 🚧 skill-upgrader (Coming Phase 4)
**Purpose:** Manage L1→L2→L3 skill progression

**When to Use:**
- Automatically after skill executions (if usage criteria met)
- User says "level up [skill]"
- User asks "what level is [skill]?"

**How It Will Work:**
1. Check usage count per skill
2. Check user feedback history
3. Check pattern detection (frequency of use)
4. If L1→L2 criteria met: Prompt user to upgrade
5. If L2→L3 criteria met: Prompt user to upgrade
6. Update `personal-os/adaptation/skill-levels.md`
7. Handle downgrades on user feedback or errors

**File:** `skills/skill-upgrader.md`

---

## Integration

### How These Skills Work Together

```
User Request
    ↓
skill-suggester (analyze intent)
    ↓
[Execute matched skill]
    ↓
[Skill execution]
    ↓
workflow-builder (detect pattern if recurring)
    ↓
skill-upgrader (check if should level up)
    ↓
system-check (verify health after major changes)
```

### Session Start Flow

1. Load CLAUDE.md (contains this Skills table)
2. Load user context files
3. Wait for user request
4. skill-suggester maps request to skill
5. Execute skill
6. [Repeat for session]

---

## Dependencies

**Required Files:**
- `CLAUDE.md` - Main orchestration, Skills table
- `personal-os/context/*` - User identity, preferences
- `personal-os/memory/*` - Priorities, patterns, learnings
- `personal-os/adaptation/*` - Skill levels, autonomy, feedback

**Cowork Features Used:**
- Skills system with frontmatter
- File system (read/write context files)
- Intent routing via skill descriptions

---

## Testing

### Test skill-suggester

```
User: "What should I focus on today?"

Expected Response:
"Use daily-agenda for this.
Reason: It generates a prioritized agenda from your current priorities."
```

```
User: "What skills do I have?"

Expected Response:
[List all skills organized by pack with descriptions]
```

### Test system-check

```
User: "System check"

Expected Response:
[Full status report showing all files healthy, current state]
```

---

## Troubleshooting

### "skill-suggester doesn't trigger"

**Cause:** CLAUDE.md not loaded or Skills table missing

**Fix:**
1. Verify CLAUDE.md exists and contains Skills table section
2. Check that CLAUDE.md is in Cowork context
3. Reload CLAUDE.md

### "system-check shows missing files"

**Cause:** Onboarding didn't complete or files deleted

**Fix:**
- Re-run onboarding: "Set up my PersonalOS"
- This will recreate all required files

### "Skills in table but files don't exist"

**Cause:** Incomplete installation or file path issues

**Fix:**
- Verify skill files exist in correct directories
- Check file paths match table entries
- Restore from backup or reinstall

---

## Future Enhancements

**Phase 4:**
- Implement workflow-builder for auto-emergence
- Implement skill-upgrader for progression
- Add pattern detection engine

**Phase 5+:**
- Add skill usage analytics
- Add skill performance metrics
- Add skill dependency tracking

---

**Status:** Phase 1 Complete (skill-suggester, system-check implemented)
**Next Phase:** Phase 2 - Personal Management skills
**Contact:** Report issues via GitHub issues or Cadence R&D feedback
