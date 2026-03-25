# Installation Guide - PersonalOS for Cowork

Complete guide to installing, configuring, and setting up PersonalOS for Cowork.

**Version:** 1.0.0 (Phases 1-4 Complete)
**Last Updated:** 2026-03-26
**Cowork Version Required:** Latest (with skills, Telegram, and Computer Use features)

---

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Installation Methods](#installation-methods)
3. [First-Time Setup](#first-time-setup)
4. [Configuration](#configuration)
5. [Verification](#verification)
6. [Upgrading](#upgrading)
7. [Troubleshooting](#troubleshooting)

---

## Prerequisites

### Required Software

1. **Claude Cowork** - Latest version with:
   - Skills system (frontmatter-based triggers)
   - Telegram integration (optional but recommended)
   - Computer Use (optional but recommended)
   - MCP support (optional)

2. **Installation Methods:**
   - Cowork Desktop App
   - Cowork CLI
   - Cowork via Cursor

**Note:** PersonalOS works with all Cowork interfaces—choose based on your workflow.

### Check Your Cowork Version

```bash
# In Cowork CLI or Desktop
check_version
```

**Required Features:**
- ✅ Skills with frontmatter
- ✅ Context file loading
- ✅ Markdown file operations
- ⚡ Telegram (recommended)
- ⚡ Computer Use (recommended)

---

## Installation Methods

### Method 1: Git Clone (Recommended for Updates)

**Best for:** Developers, users who want automatic updates

```bash
# Clone to your workspace
cd ~/.cowork/skills/  # or your chosen Cowork workspace
git clone https://github.com/cadence-rd/personal-os-cowork.git

# Navigate into PersonalOS
cd personal-os-cowork
```

**Updates:**
```bash
cd ~/.cowork/skills/personal-os-cowork
git pull
```

### Method 2: Manual Download

**Best for:** Non-developers, offline use

1. Download the latest release from:
   - https://github.com/cadence-rd/personal-os-cowork/releases

2. Extract to your Cowork workspace:
   ```bash
   # macOS/Linux
   tar -xzf personal-os-cowork-v1.0.0.tar.gz -C ~/.cowork/skills/

   # Windows
   # Extract with 7-Zip or WinRAR to your Cowork skills directory
   ```

3. Rename extracted folder to `personal-os-cowork`

### Method 3: Copy-Paste (Quickest for Testing)

**Best for:** Quick evaluation, custom modifications

1. Create a new directory in your Cowork workspace:
   ```bash
   mkdir -p ~/.cowork/skills/personal-os-cowork
   ```

2. Copy these files from the repo:
   - `CLAUDE.md`
   - `README.md`
   - `skill-packs/` (entire directory)
   - `personal-os/` (entire directory - this is where your data will live)

3. Ensure directory structure:
   ```
   personal-os-cowork/
   ├── CLAUDE.md
   ├── README.md
   ├── INSTALL.md  (this file)
   ├── personal-os/
   └── skill-packs/
   ```

---

## First-Time Setup

### Step 1: Load CLAUDE.md

PersonalOS requires `CLAUDE.md` to be loaded into your Cowork context.

**In Cowork Terminal:**
```
Load CLAUDE.md from personal-os-cowork/
```

**In Cowork Desktop:**
1. File → Load Context
2. Navigate to `personal-os-cowork/CLAUDE.md`
3. Confirm load

### Step 2: Run Onboarding (Required)

PersonalOS won't function without completing the 5-question onboarding.

**Start Onboarding:**
```
You: "Set up my PersonalOS"
```

**What Happens:**
1. PersonalOS runs `interview.md` (5 questions)
2. PersonalOS runs `role-detection.md` (infers your role)
3. Creates required files in `personal-os/context/`, `personal-os/memory/`, `personal-os/adaptation/`
4. Sets initial autonomy level to 1 (Guardian)

**Expected Onboarding Flow:**
```
PersonalOS: "Let's get to know you. I'll ask 5 questions—each takes a minute or two.
            This helps me adapt to how you work."

[Question 1: Identity]
PersonalOS: "Tell me about yourself - your name, role, and what you work on."

[Question 2: Priorities]
PersonalOS: "What are your top 3 priorities right now?"

[Question 3: Communication Style]
PersonalOS: "How do you prefer to communicate? (formal/casual, brief/detailed)"

[Question 4: Team]
PersonalOS: "Who are the 3 people you work with most?"

[Question 5: Glossary]
PersonalOS: "What internal terms or jargon should I know?"

PersonalOS: "Setup complete! I've created your personal context files.
            I'm starting at autonomy level 1 (Guardian)—I'll confirm actions before executing.
            Try: 'What can you do?' or 'Help me with...'"
```

**Files Created During Onboarding:**
- `personal-os/context/identity.md`
- `personal-os/context/communication-style.md`
- `personal-os/context/working-preferences.md`
- `personal-os/context/team-directory.md`
- `personal-os/context/glossary.md`
- `personal-os/memory/current-priorities.md`
- `personal-os/adaptation/autonomy-level.md`
- `personal-os/adaptation/skill-levels.md`

### Step 3: Verify Installation

**Run System Check:**
```
You: "Run system check"
```

**Expected Output:**
```
PersonalOS: "✓ CLAUDE.md loaded
            ✓ Context files: 5 found
            ✓ Memory files: 1 found
            ✓ Adaptation files: 2 found
            ✓ Meta-system skills: 2 available
            ✓ All core systems operational"
```

If any checks fail, see [Troubleshooting](#troubleshooting).

---

## Configuration

### Autonomy Level (Optional Override)

PersonalOS defaults to Level 1 (Guardian) for new users. You can change this:

**Increase Autonomy:**
```
You: "Be more autonomous"
```

**Decrease Autonomy:**
```
You: "Be more careful"
```

**Manual Override:**
Edit `personal-os/adaptation/autonomy-level.md` directly:

```yaml
autonomy_level: 2  # 1=Guardian, 2=Supervised, 3=Trusted, 4=Autonomous
```

### Progressive Unlock Settings

Adjust when advanced features unlock:

Edit `personal-os/adaptation/unlock-settings.md`:

```yaml
progressive_unlock:
  enabled: true
  thresholds:
    daily_routine: 5      # Sessions before daily-routine unlocks
    shortcuts: 10         # Sessions OR 10+ command repetitions
    computer_use_basic: 6 # Sessions before basic computer use
    computer_use_advanced: 21  # Sessions before advanced computer use
    self_correction: 15   # Sessions before self-correction
    recommendations: 20   # Sessions before recommendations
    optimization: 25      # Sessions before optimization
  notification_style: celebrate  # celebrate, quiet, minimal
```

### Telegram Integration (Optional)

If you use Cowork via Telegram, PersonalOS works seamlessly:

**Setup:**
1. Ensure Telegram bot is configured in Cowork
2. PersonalOS skills trigger via slash commands:
   - `/agenda` - Daily agenda
   - `/summary` - Session summary
   - `/check` - System check
   - `/skills` - List available skills

**Voice Messages:**
- Voice messages are transcribed automatically
- PersonalOS processes the transcription
- Response is sent as text back to Telegram

**File Attachments:**
- Screenshots → Computer Use analysis
- Documents → Read and process
- Code → Analyze and suggest improvements

### Computer Use Integration (Optional)

Enable desktop automation capabilities:

**Required:**
- Cowork Computer Use enabled
- Permission to access screen/files

**What PersonalOS Can Do:**
- Analyze screenshots (extract text, identify UI elements)
- Organize downloads folder
- Fill forms from your preferences
- Launch apps and workflows

**Progressive Unlock:**
- Session 6+: Basic (screenshot analysis, file inspection)
- Session 21+: Advanced (GUI automation, form filling, proactive suggestions)

### MCP Plugins (Optional)

Extend PersonalOS with external services:

**Available Plugins:**
- Gmail MCP → Email sync and drafting
- Calendar MCP → Calendar integration
- Notion MCP → Document storage
- GitHub MCP → Code review workflows
- Jira MCP → Issue tracking
- Slack MCP → Team communication

**Setup:**
1. Install MCP server in Cowork
2. PersonalOS automatically detects and integrates
3. Skills use MCP tools when available

**Note:** PersonalOS works fully without MCP plugins using Cowork's built-in tools.

---

## Verification

### Test Basic Functionality

**Test 1: Daily Agenda**
```
You: "What's my agenda today?"
```

**Expected:** PersonalOS reads your priorities and generates an agenda.

**Test 2: Skill Suggestion**
```
You: "I need help with..."
```

**Expected:** PersonalOS suggests the right skill.

**Test 3: Session Summary**
```
You: "Wrap up my session"
```

**Expected:** PersonalOS captures learnings and updates your memory.

### Test Advanced Features (After Thresholds Reached)

**Test 4: Shortcuts (10+ sessions):**
```
You: "Show my shortcuts"
```

**Expected:** PersonalOS shows frequently used commands.

**Test 5: Computer Use (6+ sessions):**
```
You: "Analyze this screenshot"
[Upload screenshot]
```

**Expected:** PersonalOS extracts text and identifies UI elements.

**Test 6: Pattern Detection (automatic, weekly):**
```
You: "What patterns have you detected?"
```

**Expected:** PersonalOS shows recurring workflows and auto-detected patterns.

### Run Full Diagnostics

```
You: "Run full diagnostics"
```

**Checks:**
- All required files exist
- Frontmatter is valid
- Skills are indexed correctly
- Progressive unlock thresholds are configured
- Autonomy level is set
- Memory system is operational

---

## Upgrading

### From Phase 1 (v0.1.0) to Phase 4 (v1.0.0)

**Method 1: Git Pull (if installed via Git)**
```bash
cd ~/.cowork/skills/personal-os-cowork
git pull
```

**Method 2: Manual Update**
1. Backup your `personal-os/` directory (contains your data!)
   ```bash
   cp -r ~/.cowork/skills/personal-os-cowork/personal-os ~/personal-os-backup/
   ```

2. Download latest release and extract to workspace

3. Restore your personal data:
   ```bash
   rm -rf ~/.cowork/skills/personal-os-cowork/personal-os
   cp -r ~/personal-os-backup ~/.cowork/skills/personal-os-cowork/personal-os
   ```

**What's New in v1.0.0:**
- ✅ Phase 2: Workflow Learning (shortcuts, daily-routine, pattern-detect, telegram)
- ✅ Phase 3: Computer Use (computer-use integration + workflow templates)
- ✅ Phase 4: Advanced Learning (self-correction, recommendations, optimization)
- ✅ Progressive unlock system with 10 levels
- ✅ 15 core skills across 4 phases

### Backward Compatibility

**PersonalOS maintains backward compatibility:**
- Your `personal-os/` data is preserved
- Skills from older versions continue to work
- New features unlock progressively
- No migration required for core data

**Note:** If you customized `CLAUDE.md`, merge changes from new version carefully.

---

## Troubleshooting

### "Skills don't trigger"

**Symptoms:**
- PersonalOS doesn't recognize skill requests
- No skill suggestions appear
- "Use [skill-name]" messages don't appear

**Diagnosis:**
1. Check if `CLAUDE.md` is loaded:
   ```
   You: "Is CLAUDE.md loaded?"
   ```

2. Check Skills Table:
   - Look at `CLAUDE.md` section "## Skill Index"
   - Verify Skills Table has entries

3. Run system check:
   ```
   You: "Run system check"
   ```

**Fixes:**
- Reload `CLAUDE.md` in Cowork
- Verify `skill-packs/` directory exists
- Check that skill files have frontmatter

### "Onboarding didn't create files"

**Symptoms:**
- Onboarding completes but files missing
- "Context files: 0 found" in system check
- PersonalOS asks for identity again

**Diagnosis:**
```bash
# Check if directory structure exists
ls -la ~/.cowork/skills/personal-os-cowork/personal-os/context/
```

**Fixes:**
```bash
# Create directories manually
mkdir -p ~/.cowork/skills/personal-os-cowork/personal-os/context/
mkdir -p ~/.cowork/skills/personal-os-cowork/personal-os/memory/
mkdir -p ~/.cowork/skills/personal-os-cowork/personal-os/adaptation/

# Re-run onboarding
You: "Set up my PersonalOS"
```

### "Skill doesn't remember my preferences"

**Symptoms:**
- PersonalOS asks same questions repeatedly
- Learned preferences are forgotten
- Skill level resets to L1

**Diagnosis:**
1. Check memory files exist:
   ```bash
   ls -la ~/.cowork/skills/personal-os-cowork/personal-os/memory/
   ```

2. Check adaptation files exist:
   ```bash
   ls -la ~/.cowork/skills/personal-os-cowork/personal-os/adaptation/
   ```

**Fixes:**
- Re-run onboarding to recreate missing files
- Verify file permissions (should be read/write)
- Check if `personal-os/` directory is backed up and restored correctly

### "Computer Use not working"

**Symptoms:**
- Screenshot analysis fails
- "Computer use not available" error
- Computer Use skill doesn't unlock at Session 6

**Diagnosis:**
```
You: "Check computer use status"
```

**Fixes:**
- Ensure Cowork Computer Use is enabled
- Check session count (must be ≥6 for basic computer use)
- Verify screen permissions are granted to Cowork

### "Telegram commands not working"

**Symptoms:**
- `/agenda`, `/summary` don't respond
- Telegram bot is not recognizing PersonalOS

**Diagnosis:**
1. Check if Cowork Telegram gateway is running
2. Verify bot token is configured

**Fixes:**
- Restart Cowork gateway
- Verify bot token in Cowork configuration
- Check if PersonalOS skills are loaded in the gateway context

### "Progressive unlock not triggering"

**Symptoms:**
- Reached Session 6 but daily-routine didn't unlock
- Reached Session 10 but shortcuts didn't unlock
- No "🎉 New skill unlocked" messages

**Diagnosis:**
```
You: "Check my session count"
```

**Fixes:**
1. Verify `personal-os/adaptation/session-count.md` exists and is updated
2. Check `personal-os/adaptation/unlock-settings.md` thresholds
3. Manually unlock if needed:
   ```
   You: "Unlock daily-routine now"
   ```

### "Too much automation" (Downgrade Autonomy)

**Symptoms:**
- PersonalOS executes actions without confirmation
- Feeling overwhelmed by automation

**Fixes:**
```
You: "Be more careful"
```

This downgrades autonomy level and requires confirmation for more actions.

### "Not enough automation" (Upgrade Autonomy)

**Symptoms:**
- Too many confirmation prompts
- Want more proactive behavior

**Fixes:**
```
You: "Be more autonomous"
```

This upgrades autonomy level and reduces confirmation prompts.

---

## Support & Community

### Getting Help

- **GitHub Issues:** https://github.com/cadence-rd/personal-os-cowork/issues
- **Cowork Community:** [Link to Cowork Discord/Forum]
- **Documentation:** https://github.com/cadence-rd/personal-os-cowork/wiki

### Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for contribution guidelines.

### Feature Requests

Open an issue with:
- Use case description
- Expected behavior
- How it integrates with existing features

---

## Next Steps

After installation and onboarding:

1. **Explore Skills:** Run `/skills` to see what's available
2. **Use Daily Agenda:** Start each session with "What's my agenda?"
3. **Provide Feedback:** PersonalOS learns from corrections
4. **Let It Adapt:** Skills level up over time (L1 → L2 → L3)
5. **Unpack Features:** Advanced features unlock as you use PersonalOS more

**Recommended First Sessions:**
- Session 1-5: Core identity and basic skills
- Session 6-10: Daily routine, basic computer use
- Session 11-20: Shortcuts, advanced computer use
- Session 21-30: Self-correction, recommendations, optimization

---

**Installation Complete!** Welcome to PersonalOS for Cowork.
