---
name: daily-workspace-setup
description: Daily workflow for launching work apps and setting up workspace
template_type: workflow
category: computer-use
---

# Daily Workspace Setup

This template defines the daily workflow for launching work applications and setting up the workspace. It integrates with the daily-routine skill to activate automatically at the start of the work day.

## Trigger Conditions

This workflow activates when:
1. Daily routine activates at the configured "work_start" time
2. User explicitly says "start work" or "setup workspace"
3. User says "launch my work apps"

## Prerequisites

- Session count must be ≥ 6 (Level 2: Confident) for app launching
- User must have completed onboarding
- `personal-os/context/working-preferences.md` must contain work_apps list

## Workflow Steps

### Step 1: Load Workspace Preferences

```markdown
Read personal-os/context/working-preferences.md:
- work_apps: List of apps to launch
- work_files: Specific files to open (optional)
- browser_tabs: URLs to open (optional)
- terminal_sessions: Terminal tab configurations (optional)
```

### Step 2: Launch Applications

```markdown
For each app in work_apps:
  1. Launch application (using open command or Cowork-specific method)
  2. Wait 2 seconds for app to open
  3. Check if app launched successfully
  4. Log success/failure to personal-os/logs/session.md

If app fails to launch:
  - Inform user: "Could not launch [app name]. Is it installed?"
  - Continue with remaining apps
  - Note failure for later troubleshooting
```

### Step 3: Open Specific Files

```markdown
If work_files defined:
  For each file:
    1. Check if file exists
    2. Open in associated application
    3. Inform user: "Opened [file]"

If file not found:
  - Inform user: "[file] not found. Skipping."
```

### Step 4: Setup Browser Tabs

```markdown
If browser_tabs defined:
  1. Launch browser
  2. For each URL:
     - Open in new tab
     - Wait for page to load
  3. Inform user: "Opened [n] browser tabs: [list]"
```

### Step 5: Configure Terminal Sessions

```markdown
If terminal_sessions defined:
  For each session:
    - Create new terminal tab
    - Change to specified directory
    - Run startup command (if defined)
    - Label tab (if supported)
```

### Step 6: Confirm Workspace Ready

```markdown
Report status to user:

"Workspace setup complete:

✅ Apps launched: [list]
✅ Files opened: [list]
✅ Browser tabs: [list]
✅ Terminal sessions: [list]

Ready to work!"
```

## Learning and Adaptation

### Track Usage Patterns

```markdown
Update personal-os/memory/patterns.md:
- Track which apps are actually used
- Track which files are actually opened
- Track success/failure rate

If app never used in 5+ sessions:
  - Suggest: "You haven't used [app] recently. Remove from workspace?"

If app manually launched frequently:
  - Suggest: "You often launch [app]. Add to workspace?"
```

### Optimize Launch Order

```markdown
Analyze app dependencies:
- If app B always opens file in app A, launch A first
- If app C always uses data from app B, launch B first
- Reorder work_apps list based on dependencies

Update personal-os/context/working-preferences.md:
  work_apps:
    - "App A (dependency)"
    - "App B"
    - "App C"
```

## User Customization

### Example Configuration

```markdown
In personal-os/context/working-preferences.md:

## Workspace Setup

### Apps to Launch
work_apps:
  - VS Code
  - Terminal
  - Chrome
  - Slack
  - Figma

### Files to Open
work_files:
  - ~/projects/cadence/README.md
  - ~/projects/cadence/CLAUDE.md

### Browser Tabs
browser_tabs:
  - https://github.com/notifications
  - https://notion.so/your-workspace
  - https://linear.app/cadence

### Terminal Sessions
terminal_sessions:
  - name: "cadence"
    directory: ~/projects/cadence
    startup: "source venv/bin/activate"
  - name: "hermes"
    directory: ~/projects/hermes
    startup: "npm start"
```

## Error Handling

### App Not Found

```markdown
If app not installed:
  - Inform user: "[app] not found. Install or remove from workspace?"
  - Offer to remove from work_apps list
  - Continue with other apps
```

### File Not Found

```markdown
If file not found:
  - Inform user: "[file] not found"
  - Offer to remove from work_files list
  - Continue with other files
```

### URL Not Reachable

```markdown
If URL fails to load:
  - Inform user: "[URL] failed to load"
  - Check if VPN/proxy needed
  - Offer to remove from browser_tabs list
```

## Success Metrics

Workflow is successful when:
- ✅ All apps launch without errors
- ✅ All specified files open successfully
- ✅ All browser tabs load completely
- ✅ Terminal sessions configured correctly
- ✅ User confirms workspace is ready

## Progressive Enhancement

### Level 2 (Sessions 6-20)
- Basic app launching
- Files and tabs as defined in preferences

### Level 3 (Sessions 21+)
- Automatic launch order optimization
- Proactive suggestions based on usage patterns
- Context-aware workspace setup (different for different projects)

---

**Template last updated:** 2026-03-25
**Version:** 1.0.0
