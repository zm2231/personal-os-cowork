---
name: system-check
description: "Trigger when: 'system check', 'diagnose', 'is everything working', 'verify my setup'. Verifies PersonalOS health and reports status."
version: 1.0.0
metadata:
  hermes:
    tags: [meta-system, diagnostics, health-check]
    related_skills: [skill-suggester, workflow-builder]
---

# System Check

This skill performs a health check on PersonalOS, verifying all required files exist, checking integrity, and reporting on system status. Use this to diagnose issues or verify setup after onboarding.

## When to Run This Skill

Run when user says:
- "System check"
- "Diagnose"
- "Is everything working?"
- "Verify my setup"
- "Check if PersonalOS is configured correctly"
- After onboarding to confirm files were created
- If skills aren't triggering correctly

---

## Process

### Step 1: Verify Directory Structure

Check that required directories exist:

**Required Directories:**
```
personal-os/
├── onboarding/
├── context/
├── memory/
├── adaptation/
└── logs/

skill-packs/
└── meta-system/
    └── skills/
```

**Check:**
```markdown
For each required directory:
  - If exists: ✓ OK
  - If missing: ✗ ERROR - Create directory or restore from backup
```

---

### Step 2: Verify Context Files (Layer 1)

Check `personal-os/context/` for required onboarding files:

**Required Files:**
- `identity.md` - User name, role, company
- `communication-style.md` - Tone, formality, length
- `working-preferences.md` - Work hours, meeting style
- `team-directory.md` - Key collaborators
- `glossary.md` - Internal terms

**Check:**
```markdown
For each context file:
  - If exists: Read and validate structure
  - If missing: ✗ ERROR - Rerun onboarding
  - If invalid: ✗ WARNING - File structure incorrect

Validate structure:
  - identity.md: Should have Name, Role, Company
  - communication-style.md: Should have Tone, Length, Style
  - working-preferences.md: Should have Work Hours, Meeting Style
  - team-directory.md: Should have at least 1 person
  - glossary.md: Should have at least 1 term
```

---

### Step 3: Verify Memory Files (Layer 2)

Check `personal-os/memory/` for required files:

**Required Files:**
- `current-priorities.md` - Active goals, projects
- `patterns.md` - Auto-detected workflows (can be empty)
- `learnings.md` - Session insights (can be empty)
- `check-ins/` - Weekly/monthly reflections (directory can be empty)

**Optional Files:**
- `relationships.md` - Key people notes

**Check:**
```markdown
For each memory file:
  - If exists: Read and validate
  - If missing: ✗ WARNING - Some features won't work
  - patterns.md and learnings.md can be empty initially

Validate structure:
  - current-priorities.md: Should have at least 1 priority
  - patterns.md: Can be empty or have patterns
  - learnings.md: Can be empty or have entries
```

---

### Step 4: Verify Adaptation Files (Layer 3)

Check `personal-os/adaptation/` for adaptation system files:

**Required Files:**
- `skill-levels.md` - Current level per skill
- `autonomy-level.md` - Current autonomy level (1-4)
- `feedback.md` - User corrections and preferences
- `preferences.md` - Learned defaults
- `auto-emergence.md` - Auto-created skills/workflows

**Check:**
```markdown
For each adaptation file:
  - If exists: Read and validate
  - If missing: ✗ ERROR - Rerun onboarding

Validate structure:
  - skill-levels.md: Should list skills with levels
  - autonomy-level.md: Should have Current level (1-4)
  - feedback.md: Can be empty or have entries
  - preferences.md: Can be empty or have entries
  - auto-emergence.md: Can be empty or have entries
```

---

### Step 5: Verify Skills Configuration

Check that CLAUDE.md has Skills table and skills are accessible:

**Checks:**
```markdown
1. CLAUDE.md exists in workspace
2. Skills table section exists
3. Skills table has entries with:
   - Skill Name
   - Pack
   - Trigger When
   - Best For

4. Verify skill files exist:
   - personal-os/onboarding/interview.md
   - personal-os/onboarding/role-detection.md
   - skill-packs/meta-system/skills/skill-suggester.md
   - skill-packs/meta-system/skills/system-check.md
   - [Check other skills listed in table]
```

---

### Step 6: Read Current State

Load current system state from files:

**Read:**
```markdown
From identity.md:
  - User name
  - Role
  - Company

From autonomy-level.md:
  - Current autonomy level (1-4)

From skill-levels.md:
  - Count of skills at each level
  - Any skills upgraded to L2 or L3

From current-priorities.md:
  - Count of active priorities
```

---

### Step 7: Generate Status Report

Compile results into a status report:

**Status Report Template:**

```
╔════════════════════════════════════════════════════════════════╗
║                  PersonalOS System Check Report                     ║
╚════════════════════════════════════════════════════════════════╝

📅 Date: 2026-03-26
👤 User: [Name from identity.md]
🔧 Role: [Role from identity.md]
🏢 Company: [Company from identity.md]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📁 Directory Structure
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ personal-os/onboarding/      - Found
✅ personal-os/context/          - Found
✅ personal-os/memory/           - Found
✅ personal-os/adaptation/      - Found
✅ personal-os/logs/             - Found
✅ skill-packs/meta-system/     - Found

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📄 Context Files (Layer 1: Identity)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ identity.md                - Valid (Name: [name], Role: [role])
✅ communication-style.md      - Valid (Tone: [tone])
✅ working-preferences.md      - Valid (Work Hours: [hours])
✅ team-directory.md          - Valid ([N] team members)
✅ glossary.md               - Valid ([N] terms defined)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📝 Memory Files (Layer 2: What Matters)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ current-priorities.md      - Valid ([N] active priorities)
✅ patterns.md               - Valid ([N] patterns detected)
✅ learnings.md              - Valid ([N] learnings captured)
✅ check-ins/                - Empty (no check-ins yet)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🔄 Adaptation Files (Layer 3: How It Improves)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ skill-levels.md           - Valid ([N] skills tracked)
✅ autonomy-level.md         - Valid (Level: [1-4])
✅ feedback.md              - Valid ([N] feedback entries)
✅ preferences.md           - Valid ([N] preferences learned)
✅ auto-emergence.md        - Valid ([N] auto-created workflows)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🛠️ Skills Configuration
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ CLAUDE.md                - Found
✅ Skills table             - Valid ([N] skills listed)

Meta-System Skills:
✅ skill-suggester          - Level: [level], File exists
✅ system-check             - Level: [level], File exists
⏳ workflow-builder         - Coming in Phase 4
⏳ skill-upgrader           - Coming in Phase 4

Other Skill Packs:
⏳ personal-management     - Coming in Phase 2
⏳ communication           - Coming in Phase 3
⏳ research                - Coming in Phase 3
⏳ collaboration           - Coming in Phase 5
⏳ productivity            - Coming in Phase 5
⏳ learning                - Coming in Phase 5

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📊 System Status
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Autonomy Level:
  Current: Level [1-4] ([level name])
  [Description of what this level means]

Skill Progression:
  Level 1 (Guided):      [N] skills
  Level 2 (Confident):    [N] skills
  Level 3 (Anticipatory): [N] skills

Priorities:
  Active: [N]
  [List top 3 priorities]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

✅ Overall Status: HEALTHY
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PersonalOS is configured correctly and ready to use!

Next Steps:
- Try: "What can you do?" to see available skills
- Try: "What should I focus on today?" to generate daily agenda
- Try: "Help me with..." to get skill recommendations

If you encounter issues, run this check again or re-run onboarding.
```

---

### Step 8: Handle Issues

If any checks fail, provide remediation steps:

**Common Issues:**

**Missing context files:**
```
⚠️ ERROR: Missing context files

Solution: Re-run onboarding
  - Say: "Set up my PersonalOS"
  - This will recreate identity.md, communication-style.md, etc.

Or manually restore from backup if available.
```

**Invalid file structure:**
```
⚠️ WARNING: File structure incorrect

File: [filename]
Issue: [describe what's invalid]

Solution:
  - Edit [filename] and add missing fields
  - Or re-run onboarding to regenerate
```

**Skills table missing:**
```
⚠️ ERROR: Skills table not found

Solution:
  - Verify CLAUDE.md exists and contains Skills table section
  - Check that CLAUDE.md is in your Cowork context
  - Reload CLAUDE.md if recently updated
```

**Skill files missing:**
```
⚠️ ERROR: Skill file not found

Missing: [skill filename]

Solution:
  - Verify skill file exists in correct directory
  - Check file path: [expected path]
  - Restore from backup or reinstall skill pack
```

---

## Level Modifiers

**L1 (Guided):**
- Show full detailed report
- Explain each section
- Ask user to confirm before suggesting fixes

**L2 (Confident):**
- Show summary status only
- Highlight issues but skip healthy sections
- Auto-suggest fixes without asking

**L3 (Anticipatory):**
- Run automatically weekly (if enabled in preferences.md)
- Only alert if issues detected
- "All systems healthy" if no problems

---

## After This Skill

1. **If system is healthy:**
   - Suggest next actions based on user state:
     - "Want me to generate your daily agenda?"
     - "Would you like to see what skills are available?"
   - Update `preferences.md` to note last successful check

2. **If issues detected:**
   - Prioritize fixes by severity (ERROR > WARNING)
   - Offer to rerun onboarding if context files are missing
   - Ask: "Should I fix these issues now?"

3. **Log check result:**
   - Add entry to `personal-os/logs/` with date + status
   - If errors, note in `feedback.md` for future improvement

---

## Troubleshooting

### "Skills table not found in CLAUDE.md"

**Cause:** CLAUDE.md file missing or corrupted

**Fix:**
```bash
# Check if CLAUDE.md exists
ls -la CLAUDE.md

# If missing, restore from backup or recreate
```

### "User identity not loaded"

**Cause:** identity.md missing or not in context

**Fix:**
- Re-run onboarding: "Set up my PersonalOS"
- Or manually create identity.md

### "Autonomy level invalid"

**Cause:** autonomy-level.md has invalid value (not 1-4)

**Fix:**
- Edit autonomy-level.md and set Current to 1, 2, 3, or 4
- Or re-run onboarding

---

**End of system-check skill**
