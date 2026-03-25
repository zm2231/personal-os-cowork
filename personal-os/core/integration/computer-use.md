---
name: computer-use
description: Computer use workflows - screenshot analysis, GUI automation, file organization, app launching
type: integration
tier: L2
triggers:
  - "screenshot"
  - "automate.*desktop"
  - "organize.*files"
  - "launch.*apps"
  - "fill.*form"
  - "setup.*workspace"
user_invocable: true
---

# Computer Use

You can automate visual and desktop workflows using Cowork's computer use capabilities. This skill helps you work with screenshots, automate GUI tasks, organize files, and launch applications.

## Capabilities

### Screenshot Analysis
- Extract text from screenshots (OCR)
- Identify UI elements (buttons, forms, navigation)
- Compare screenshots to find differences
- Recognize patterns across multiple screenshots

**When to use:**
- User shares a screenshot
- User says "analyze this screen"
- User asks "what's on this page?"

### GUI Automation
- Click sequences (multi-step workflows)
- Form filling (map fields to memory)
- Navigation patterns (menu paths, tab switching)
- Keyboard shortcuts

**When to use:**
- User describes a repetitive clicking task
- User says "automate clicking X then Y"
- User wants to fill out forms

### File Management
- Organize files by type (images, documents, downloads)
- Clean up duplicates
- Archive old files
- Pattern-based file searches

**When to use:**
- User says "organize my downloads"
- User asks "find duplicate files"
- User wants to clean up folders

### App Launching
- Launch predefined app groups
- Open specific files/tabs
- Workspace setup
- Daily work routine automation

**When to use:**
- User says "launch my work apps"
- User requests "setup my workspace"
- Daily routine activation triggers this

---

## Workflow: Screenshot Analysis

**Trigger:** User shares a screenshot or says "analyze this"

### Process

1. **Capture Context**
   ```markdown
   If user shares screenshot:
     - Analyze the image content
     - Extract all visible text
     - Identify UI elements (buttons, forms, menus)
     - Note layout and structure

   If user asks "analyze this":
     - Request screenshot if not provided
     - Explain what you can extract: text, UI elements, patterns
   ```

2. **Extract Information**
   ```markdown
   - Text: Use OCR to read all visible text
   - UI Elements: Identify buttons, inputs, navigation, menus
   - Structure: Note layout, hierarchy, relationships
   - Patterns: Look for recurring elements (lists, tables, cards)
   ```

3. **Provide Insights**
   ```markdown
   Based on screenshot content:
   - Summarize what the screen shows
   - Identify actionable elements (buttons to click, forms to fill)
   - Note any issues or patterns
   - Suggest next actions
   ```

4. **Learn from Screenshots**
   ```markdown
   If same/similar screen appears 3+ times:
     - Note pattern in personal-os/memory/patterns.md:
       "User sees [screen type] [frequency] - recurring workflow"

     - Suggest automation:
       "You've shared this screen 3 times. Want to create an automation?"
   ```

**Examples:**

*User shares error message screenshot:*
- Extract error text
- Identify error type and potential causes
- Suggest fixes or next steps

*User shares dashboard screenshot:*
- Extract metrics and data
- Identify trends or anomalies
- Suggest actions based on data

*User shares form screenshot:*
- Extract field names and types
- Suggest which fields can be auto-filled from memory
- Offer to fill the form

---

## Workflow: File Organization

**Trigger:** "organize my downloads" or "clean up [folder]"

### Process

1. **Check Preferences**
   ```markdown
   Read personal-os/context/working-preferences.md:
   - Look for file organization preferences
   - Check if user has defined directory mappings
   - Note any excluded file types or paths
   ```

2. **Analyze Folder**
   ```markdown
   For target folder (e.g., ~/Downloads):
   - List all files
   - Categorize by type:
     * images: .png, .jpg, .jpeg, .gif, .svg, .webp
     * documents: .pdf, .doc, .docx, .txt, .md
     * archives: .zip, .tar, .gz, .rar
     * installers: .dmg, .pkg, .exe, .app
     * code: .py, .js, .html, .css
   - Check for duplicates (same name + similar size)
   - Identify old files (last modified > 30 days)
   ```

3. **Propose Organization Plan**
   ```markdown
   Before moving files:
   - Show what will be moved where
   - Highlight duplicates and ask which to keep
   - Flag files that don't fit obvious categories
   - Ask for confirmation before proceeding
   ```

4. **Execute Organization**
   ```markdown
   With user confirmation:
   - Create subdirectories if needed
   - Move files to appropriate directories
   - Remove duplicates (keeping newest unless specified)
   - Archive old files to ~/Downloads/Archive/
   ```

5. **Learn Patterns**
   ```markdown
   Update personal-os/memory/patterns.md:
   - Note user's file type patterns (e.g., "Downloads: 70% images, 20% PDFs")
   - Learn user's preferred organization structure
   - Track frequency of organization tasks
   ```

**Example Output:**
```markdown
I found 47 files in Downloads:

**By type:**
- Images: 32 files (.png, .jpg)
- PDFs: 8 files
- Archives: 5 files (.zip)
- Installers: 2 files (.dmg)

**Duplicates found:**
- screenshot-001.png (2 copies) - keep newest?
- project-report.pdf (3 copies) - keep newest?

**Organization plan:**
Move to ~/Downloads/Images/ (32 files)
Move to ~/Downloads/Documents/ (8 files)
Move to ~/Downloads/Archives/ (5 files)
Move to ~/Downloads/Installers/ (2 files)

Proceed with this plan?
```

---

## Workflow: App Launching

**Trigger:** "launch my work apps" or daily routine activation

### Process

1. **Check Preferences**
   ```markdown
   Read personal-os/context/working-preferences.md:
   - Look for "work_apps" list
   - Check launch order preferences
   - Note specific files/tabs to open
   ```

2. **Launch Apps**
   ```markdown
   For each app in work_apps list:
   - Launch application (using terminal open command or Cowork-specific)
   - Wait for app to open
   - Open specific files if defined
   ```

3. **Setup Workspace**
   ```markdown
   If defined in preferences:
   - Arrange windows (if Cowork supports)
   - Open specific browser tabs
   - Set up terminal tabs/sessions
   ```

4. **Report Status**
   ```markdown
   Inform user:
   - Which apps launched
   - Any failures (app not installed, path error)
   - Workspace setup status
   ```

5. **Learn Patterns**
   ```markdown
   Track usage:
   - Which apps are launched most often
   - Which apps are never launched (suggest removing from list)
   - New apps user manually launches (suggest adding to list)
   ```

**Example:**
```markdown
Launching work apps...

✅ VS Code opened
✅ Terminal opened with 3 tabs
✅ Chrome opened with tabs: GitHub, Notion, Slack
✅ Figma opened

Workspace ready. Anything else?
```

---

## Workflow: Form Filling

**Trigger:** "fill out [form]" or pattern detection

### Process

1. **Load Form**
   ```markdown
   - Open form in browser or app
   - Take screenshot or capture fields
   - Extract field names and types
   ```

2. **Map Fields to Memory**
   ```markdown
   Check personal-os/context/ files:
   - identity.md: Name, email, phone, address
   - working-preferences.md: Job title, department, project info
   - current-priorities.md: Active projects, clients, deadlines

   Create field mapping:
     "Full Name" → identity.md.full_name
     "Email" → identity.md.email
     "Project" → current-priorities.md.active_project
     "Hours" → working-preferences.md.default_hours
   ```

3. **Fill Fields**
   ```markdown
   - For each mapped field:
     * Extract value from memory
     * Fill field in form
   - For unmapped fields:
     * Ask user for value
     * Note field for future mapping
   ```

4. **Review and Submit**
   ```markdown
   - Show user what was filled
   - Ask for corrections
   - Submit form
   - Capture confirmation
   ```

5. **Learn Form Pattern**
   ```markdown
   Store form template in personal-os/templates/forms/[form-name].md:
   - Field list
   - Field mappings to memory
   - Any special logic or calculations

   If same form appears 2+ times:
     - Offer to auto-fill in future
     - "I see you fill out [form] regularly. Want to automate this?"
   ```

**Example:**
```markdown
I'll fill out the Time Sheet form.

**Fields I can auto-fill from memory:**
- Full Name: Zain M. ✓
- Email: zain@example.com ✓
- Project: Cadence R&D ✓
- Week: March 25, 2026 ✓

**Fields I need from you:**
- Hours worked: ___
- Task description: ___

Fill in the blanks and I'll submit the form.
```

---

## Progressive Discovery

Based on your session count and skill level, capabilities unlock progressively:

### Level 1 (Guardian) - Sessions 1-5
**Available:**
- Screenshot analysis only
- Read-only file inspection

**Behavior:**
- Analyze screenshots and describe content
- Show what files are in folders
- Ask before taking any actions

**Triggers:**
- User shares screenshot
- User says "analyze this"
- User asks "what's in [folder]?"

### Level 2 (Confident) - Sessions 6-20
**Available:**
- Basic GUI automation (click sequences)
- File organization (with confirmation)
- App launching from preferences

**Behavior:**
- Propose action plans before executing
- Show what will change before changing it
- Learn basic patterns from repetition

**Triggers:**
- User describes repetitive clicking task
- User says "organize my downloads"
- User says "launch my work apps"

### Level 3 (Anticipatory) - Sessions 21+
**Available:**
- Multi-app workspace setups
- Form filling from memory
- Proactive organization suggestions
- Pattern-based automation

**Behavior:**
- Suggest automations based on patterns
- Fill forms without asking (show summary)
- Organize files proactively (if patterns established)
- Create compound skills from observed workflows

**Triggers:**
- Pattern detection (same screen 3x)
- User says "automate everything"
- Daily routine auto-activation

---

## Integration with Other Skills

### pattern-detect.md
- **New signal type:** Visual patterns (UI layouts, recurring screens)
- **Pattern synthesis:** "You see this screen 3x/week - want to automate?"

### shortcuts.md
- **New shortcut type:** GUI shortcuts (click sequences, menu paths)
- **Optimization:** Replace repetitive clicking with single command

### automations.md
- **New automation source:** Visual workflows (multi-step GUI tasks)
- **Compound skill creation:** Combine clicks + data extraction + form filling

### daily-routine.md
- **Integration:** Launch work apps at start of day
- **Integration:** Close work apps at end of day
- **Integration:** Organize downloads weekly

---

## Memory Updates

### Files I Read
- `personal-os/context/working-preferences.md` - App lists, file paths, organization preferences
- `personal-os/context/identity.md` - Name, contact info for forms
- `personal-os/memory/current-priorities.md` - Active projects for context
- `personal-os/adaptation/skill-levels.md` - Check my current skill level

### Files I Write
- `personal-os/memory/patterns.md` - Visual patterns detected, recurring screens
- `personal-os/templates/forms/[form-name].md` - Form field mappings for auto-fill
- `personal-os/adaptation/feedback.md` - Automation suggestions, user corrections

---

## Success Criteria

You're successfully using computer-use when:
- ✅ You can analyze screenshots and extract meaningful information
- ✅ You can organize files by type and clean up duplicates
- ✅ You can launch predefined app groups for workspace setup
- ✅ You can fill forms using data from memory files
- ✅ You learn patterns and suggest automations proactively
- ✅ You respect autonomy levels and confirm before actions

---

## Examples

**Example 1: Screenshot Analysis**
```
User: [shares screenshot of error message]
You: I see a TypeScript error: "Cannot read property 'length' of undefined"
     at line 42 of data-fetcher.ts.

     This suggests the data variable is undefined when you're trying to access
     its length property. Common causes:
     1. API returned empty response
     2. Variable name typo
     3. Missing null check

     Want me to look at the code around line 42?
```

**Example 2: File Organization (Level 2+)**
```
User: Organize my downloads
You: I found 47 files in Downloads:

     Images: 32 files
     Documents: 8 files
     Archives: 5 files
     Installers: 2 files

     I'll move them into subdirectories and remove 2 duplicates.
     Proceed?
```

**Example 3: App Launching (Level 2+)**
```
User: Launch my work apps
You: Launching work apps...

     ✅ VS Code opened
     ✅ Terminal with 3 tabs
     ✅ Chrome with GitHub, Notion, Slack tabs
     ✅ Figma

     Workspace ready!
```

**Example 4: Form Filling (Level 3+)**
```
User: Fill out the expense report
You: I'll fill out the expense report using your profile:

     Name: Zain M.
     Department: R&D
     Project: Cadence
     Date: March 25, 2026

     I need these details:
     - Amount: ___
     - Category: ___
     - Description: ___

     Fill in the blanks and I'll submit.
```

---

**Ready to help automate your desktop workflows!**
