---
name: downloads-organizer
description: Workflow for organizing downloads folder by file type and cleaning up duplicates
template_type: workflow
category: computer-use
---

# Downloads Organizer

This template defines the workflow for organizing the Downloads folder. It categorizes files by type, removes duplicates, and archives old files.

## Trigger Conditions

This workflow activates when:
1. User explicitly says "organize my downloads" or "clean up downloads"
2. Pattern-detect signals weekly organization need
3. User downloads 20+ files in one session
4. Session count ≥ 10 (Level 2: Confident)

## Prerequisites

- Session count must be ≥ 6 (Level 2: Confident) for file organization
- User must have completed onboarding
- Downloads folder path: `~/Downloads/`

## Workflow Steps

### Step 1: Analyze Downloads Folder

```markdown
List all files in ~/Downloads/:

For each file:
  1. Get filename
  2. Get file extension
  3. Get file size
  4. Get last modified date
  5. Calculate file hash (for duplicate detection)
```

### Step 2: Categorize Files

```markdown
Group files by type using extension mapping:

**Images:**
Extensions: .png, .jpg, .jpeg, .gif, .svg, .webp, .bmp, .tiff
Destination: ~/Downloads/Images/

**Documents:**
Extensions: .pdf, .doc, .docx, .txt, .md, .rtf, .pages
Destination: ~/Downloads/Documents/

**Archives:**
Extensions: .zip, .tar, .gz, .rar, .7z, .dmg, .pkg
Destination: ~/Downloads/Archives/

**Installers:**
Extensions: .exe, .msi, .app, .dmg, .pkg
Destination: ~/Downloads/Installers/

**Code:**
Extensions: .py, .js, .html, .css, .json, .xml, .yaml, .yml, .ts, .tsx
Destination: ~/Downloads/Code/

**Media:**
Extensions: .mp4, .mov, .avi, .mkv, .mp3, .wav, .flac
Destination: ~/Downloads/Media/

**Other:**
Extensions: anything not matching above
Destination: ~/Downloads/Other/
```

### Step 3: Identify Duplicates

```markdown
For files with same name:
  1. Compare file sizes
  2. If same size: Calculate hash to confirm
  3. Mark duplicates (keep newest, mark others)

Example:
  screenshot-001.png (1.2MB, modified 2026-03-25) ← KEEP
  screenshot-001.png (1.2MB, modified 2026-03-24) ← DUPLICATE
  screenshot-001.png (0.8MB, modified 2026-03-25) ← DIFFERENT (different content)
```

### Step 4: Identify Old Files

```markdown
For files older than 30 days:
  1. Check last modified date
  2. If date < (today - 30 days): Mark for archival
  3. Move to ~/Downloads/Archive/

Archive structure:
  ~/Downloads/Archive/2026-02/
  ~/Downloads/Archive/2026-01/
  ~/Downloads/Archive/2025-12/
```

### Step 5: Propose Organization Plan

```markdown
Show user what will happen:

"Downloads folder analysis complete:

**Total files:** 47

**By type:**
- Images: 32 files → ~/Downloads/Images/
- Documents: 8 files → ~/Downloads/Documents/
- Archives: 5 files → ~/Downloads/Archives/
- Installers: 2 files → ~/Downloads/Installers/

**Duplicates found:** 2
- screenshot-001.png (2 copies) - keep newest?
- project-report.pdf (3 copies) - keep newest?

**Old files (archive):** 5 files (>30 days)
- Move to ~/Downloads/Archive/2026-02/

Proceed with organization?"
```

### Step 6: Execute Organization

```markdown
With user confirmation:

1. Create subdirectories if they don't exist
2. For each file category:
   - Move files to appropriate directory
3. Remove duplicates (keep newest unless specified otherwise)
4. Move old files to archive (by month)
5. Show progress as files move

Report final status:

"Downloads organized!

✅ 47 files moved
✅ 2 duplicates removed
✅ 5 files archived

Clean and organized!"
```

## Learning and Adaptation

### Track User Patterns

```markdown
Update personal-os/memory/patterns.md:

**Download Patterns:**
- Most common type: [e.g., "Images (70%)"]
- Average weekly downloads: [e.g., "15 files"]
- Peak download times: [e.g., "Monday morning"]
- Frequent duplicates: [list filenames]

**Organization Preferences:**
- User prefers to keep: [e.g., "all PDFs, not archive them"]
- User archives after: [e.g., "60 days, not 30"]
- User excludes: [e.g., ".dmg files from organization"]
```

### Proactive Suggestions

```markdown
Based on patterns:

1. If user downloads same file type frequently:
   "You download a lot of images. Want to auto-move them to Pictures
   instead of Downloads/Images?"

2. If duplicates appear often:
   "You often download the same file twice. Want me to check for
   duplicates automatically?"

3. If old files pile up:
   "Your Downloads folder has 50+ old files. Want me to archive them?"
```

## User Customization

### Example Configuration

```markdown
In personal-os/context/working-preferences.md:

## Downloads Organization

### File Type Categories
file_categories:
  images:
    extensions: [.png, .jpg, .jpeg, .gif, .svg, .webp]
    destination: ~/Downloads/Images/
    auto_archive: false

  documents:
    extensions: [.pdf, .doc, .docx, .txt, .md]
    destination: ~/Downloads/Documents/
    auto_archive: true
    archive_after_days: 60

  installers:
    extensions: [.dmg, .pkg, .exe]
    destination: ~/Downloads/Installers/
    auto_archive: true
    archive_after_days: 7

### Excluded Files
exclude_from_organization:
  - "*.tmp"
  - "*.partial"
  - "README*"

### Archive Settings
archive_enabled: true
archive_after_days: 30
archive_by_month: true
```

## Error Handling

### File in Use

```markdown
If file is locked/in use:
  - Inform user: "[file] is in use. Skip?"
  - Offer to retry later
  - Continue with other files
```

### Permission Denied

```markdown
If permission error:
  - Inform user: "Cannot move [file]. Permission denied."
  - Suggest: "Check if file is in use or needs admin permissions."
  - Continue with other files
```

### Disk Space

```markdown
If low disk space during organization:
  - Inform user: "Low disk space. Cannot create archive folder."
  - Suggest: "Clean up disk space or disable archiving."
  - Stop organization
```

## Success Metrics

Workflow is successful when:
- ✅ All files categorized and moved
- ✅ Duplicates removed (as confirmed by user)
- ✅ Old files archived
- ✅ No permission errors
- ✅ User confirms downloads folder is organized

## Progressive Enhancement

### Level 2 (Sessions 6-20)
- Manual organization on user request
- Show plan before executing
- Ask for confirmation

### Level 3 (Sessions 21+)
- Proactive organization when 20+ files accumulate
- Auto-archive based on learned preferences
- Intelligent duplicate detection with content comparison
- Suggest download location changes based on patterns

## Alternative Workflows

### Quick Clean

```markdown
Trigger: "quick clean downloads"
Action: Move everything to Archive/[date] without sorting
Use when: User wants instant cleanup, no categorization
```

### Type-Only

```markdown
Trigger: "organize downloads by type"
Action: Categorize but don't archive duplicates
Use when: User wants organization but keeps all files
```

---

**Template last updated:** 2026-03-25
**Version:** 1.0.0
