---
name: form-filler
description: Workflow for filling out recurring forms using data from PersonalOS memory
template_type: workflow
category: computer-use
---

# Form Filler

This template defines the workflow for filling out forms using data stored in PersonalOS memory files. It learns form patterns and can auto-fill recurring forms.

## Trigger Conditions

This workflow activates when:
1. User says "fill out [form name]"
2. User shares a form screenshot and says "fill this"
3. Pattern-detect identifies recurring form (seen 2+ times)
4. Session count ≥ 21 (Level 3: Anticipatory) for auto-filling

## Prerequisites

- Session count must be ≥ 6 (Level 2: Confident) for manual form filling
- Session count must be ≥ 21 (Level 3: Anticipatory) for auto-filling
- User must have completed onboarding
- Form template must exist (for recurring forms)

## Workflow Steps

### Step 1: Load Form

```markdown
Option 1: Form URL
- Navigate to form in browser
- Wait for form to load

Option 2: Screenshot
- Analyze screenshot
- Extract form fields

Option 3: Form file
- Open form document
- Parse form fields
```

### Step 2: Extract Form Fields

```markdown
For each form field:
  1. Extract field name/label
  2. Extract field type (text, email, number, dropdown, checkbox)
  3. Note if field is required
  4. Note any validation rules (max length, format)

Example extracted fields:
- Full Name (text, required)
- Email (email, required)
- Project (dropdown, required)
- Hours Worked (number, required)
- Task Description (textarea, optional)
- Date (date, required)
```

### Step 3: Map Fields to Memory

```markdown
Check personal-os/context/ files for matching data:

**Identity Fields:**
Full Name → identity.md.full_name
Email → identity.md.email
Phone → identity.md.phone
Address → identity.md.address
Department → identity.md.department
Job Title → identity.md.job_title

**Work Preferences:**
Project → working-preferences.md.default_project
Hours → working-preferences.md.default_hours
Rate → working-preferences.md.hourly_rate

**Current Priorities:**
Active Client → current-priorities.md.active_client
Active Project → current-priorities.md.active_project
Deadline → current-priorities.md.next_deadline
```

### Step 4: Fill Mapped Fields

```markdown
For each field with memory mapping:
  1. Retrieve value from memory file
  2. Validate value (check format, length)
  3. Fill field in form

Example:
  Field: Full Name
  Source: identity.md
  Value: "Alex J."
  Action: Fill field with "Alex J."

  Field: Email
  Source: identity.md
  Value: "zain@example.com"
  Action: Fill field with "zain@example.com"
```

### Step 5: Collect Missing Values

```markdown
For fields without memory mapping:
  1. Ask user for value
  2. Store value temporarily
  3. Fill field

Example:
  Field: Hours Worked
  Source: Not in memory
  Action: "How many hours did you work?"

  Field: Task Description
  Source: Not in memory
  Action: "What did you work on?"
```

### Step 6: Review Before Submit

```markdown
Show user what was filled:

"Form ready for submission:

**Auto-filled from memory:**
- Full Name: Alex J. ✓
- Email: zain@example.com ✓
- Project: Acme Project ✓
- Date: March 25, 2026 ✓

**Values you provided:**
- Hours Worked: 8 ✓
- Task Description: Phase 3 implementation ✓

Ready to submit?"
```

### Step 7: Submit Form

```markdown
With user confirmation:
  1. Click submit button
  2. Wait for response
  3. Capture confirmation/receipt
  4. Save confirmation to personal-os/logs/forms/[date].md
```

## Learning and Adaptation

### Store Form Template

```markdown
After filling form:
  Create form template at personal-os/templates/forms/[form-name].md:

  ---
  name: time-sheet
  description: Weekly time sheet form
  url: https://internal.company.com/time-sheet
  last_filled: 2026-03-25
  frequency: weekly
  ---

  ## Fields

  | Field Name | Type | Source | Value |
  |------------|------|--------|-------|
  | Full Name | text | identity.md.full_name | Alex J. |
  | Email | email | identity.md.email | zain@example.com |
  | Project | dropdown | current-priorities.md.active_project | Acme Project |
  | Hours Worked | number | user_input | 8 |
  | Task Description | textarea | user_input | Phase 3 implementation |
  | Date | date | auto | 2026-03-25 |
```

### Learn from User Corrections

```markdown
If user corrects a value:
  1. Note the correction in personal-os/adaptation/feedback.md
  2. If correction is consistent (3+ times), update memory file

Example:
  User corrects "Job Title" from "R&D Lead" to "Senior Developer" (3x)
  Action: Update identity.md.job_title to "Senior Developer"
```

### Detect Form Patterns

```markdown
Track form frequency:
- Daily forms: Suggest auto-fill with Level 3
- Weekly forms: Suggest auto-fill with Level 3
- Monthly forms: Offer monthly reminder
- One-time forms: Don't suggest auto-fill

If same form appears 2+ times:
  "You've filled out [form] [n] times. Want to auto-fill it in the future?"
```

## User Customization

### Example Configuration

```markdown
In personal-os/templates/forms/time-sheet.md:

## Field Mappings

field_mappings:
  full_name:
    source: identity.md.full_name
    required: true

  email:
    source: identity.md.email
    required: true

  project:
    source: current-priorities.md.active_project
    required: true
    options: [Acme Project, Client Work, Internal]

  hours_worked:
    source: user_input
    required: true
    default: 8
    validation: min=0, max=24

  task_description:
    source: current-priorities.md.current_task
    required: false

  date:
    source: auto_today
    required: true

## Auto-Fill Settings

auto_fill: true
confirm_before_submit: true
save_confirmation: true
```

## Error Handling

### Form Field Not Found

```markdown
If form field changed from template:
  - Inform user: "Field [field name] not found. Form may have changed."
  - Show new fields and ask for mappings
  - Update form template
```

### Validation Error

```markdown
If form validation fails:
  - Show which fields failed validation
  - Explain error (e.g., "Email format invalid")
  - Ask user to correct
  - Retry submission
```

### Submission Failed

```markdown
If submission fails:
  - Capture error message
  - Inform user: "Submission failed: [error]"
  - Ask if user wants to retry or save draft
  - Save draft to personal-os/logs/forms/drafts/[name].md
```

## Success Metrics

Workflow is successful when:
- ✅ All required fields filled
- ✅ Form submits without validation errors
- ✅ Confirmation captured
- ✅ Form template updated
- ✅ User confirms submission

## Progressive Enhancement

### Level 2 (Sessions 6-20)
- Manual form filling with user input
- Show plan before filling
- Ask for confirmation before submit
- Create form template after first fill

### Level 3 (Sessions 21+)
- Auto-fill from memory for known forms
- Proactive suggestions for recurring forms
- Batch fill multiple forms (e.g., weekly time sheets)
- Intelligent field mapping based on patterns
- Auto-submit with summary (no confirmation for trusted forms)

## Form Types

### Time Sheets

```markdown
Fields: Name, Email, Project, Hours, Task, Date
Frequency: Weekly
Auto-fill: Yes (Level 3+)
```

### Expense Reports

```markdown
Fields: Name, Amount, Category, Description, Receipt
Frequency: Monthly
Auto-fill: Yes (Level 3+)
```

### Client Onboarding

```markdown
Fields: Name, Company, Email, Role, Start Date
Frequency: One-time per client
Auto-fill: Partial (identity data only)
```

### Bug Reports

```markdown
Fields: Title, Description, Steps to Reproduce, Environment
Frequency: As needed
Auto-fill: Environment data only
```

## Alternative Workflows

### Quick Fill

```markdown
Trigger: "quick fill [form]"
Action: Fill with default values, skip validation
Use when: Testing or draft submission
```

### Batch Fill

```markdown
Trigger: "fill all time sheets for March"
Action: Fill multiple similar forms with different dates
Use when: Weekly time sheets, monthly reports
```

### Update Only

```markdown
Trigger: "update [form] submission"
Action: Load previous submission, update changed fields
Use when: Modifying existing form submission
```

---

**Template last updated:** 2026-03-25
**Version:** 1.0.0
