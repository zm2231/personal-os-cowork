# Personalization Profile Template

**File:** `personal-os/adaptation/personalization-profile.md`
**Purpose:** Central user preference profile that all skills read to adapt behavior

---

# Personalization Profile

**Last Updated:** {timestamp}
**Profile Version:** 1.0

## Communication Style

### Tone
- **Current Preference:** {tone} (professional-friendly, formal, casual, technical)
- **Confidence:** {confidence}
- **Last Updated:** {timestamp}

### Detail Level
- **Current Preference:** {detail_level} (concise, balanced, comprehensive)
- **Confidence:** {confidence}
- **Last Updated:** {timestamp}

### Response Structure
- **Current Preference:** {structure} (bullets, paragraphs, numbered, mixed)
- **Confidence:** {confidence}
- **Last Updated:** {timestamp}

### Formatting Preferences

| Feature | Enabled | Preference | Confidence |
|---------|---------|------------|------------|
| Code Blocks | {use_code_blocks} | {preference} | {confidence} |
| Emphasis | {use_emphasis} | {preference} | {confidence} |
| Tables | {use_tables} | {preference} | {confidence} |
| Lists | {use_lists} | {preference} | {confidence} |
| Headings | {use_headings} | {preference} | {confidence} |
| Quotes | {use_quotes} | {preference} | {confidence} |

## Skill Preferences

### Confirmation Threshold
- **Current Preference:** {confirm_threshold} (low, medium, high)
- **Low:** Confirm only on external sends or deletions
- **Medium:** Confirm on risky actions (sends, deletes, file writes)
- **High:** Confirm before all actions
- **Confidence:** {confidence}
- **Last Updated:** {timestamp}

### Default Action
- **Current Preference:** {default_action} (suggest, auto, confirm)
- **Suggest:** Show options, wait for user choice
- **Auto:** Execute with best guess, offer to undo
- **Confirm:** Ask before taking action
- **Confidence:** {confidence}
- **Last Updated:** {timestamp}

### Output Format
- **Current Preference:** {output_format} (structured, conversational, mixed)
- **Structured:** Data tables, clear sections, bullet points
- **Conversational:** Natural language, paragraphs, storytelling
- **Mixed:** Adaptive based on context
- **Confidence:** {confidence}
- **Last Updated:** {timestamp}

## Workflow Preferences

### Session Start Routine
- **Current Preference:** {session_start_routine} (minimal, standard, comprehensive)
- **Minimal:** Quick greeting, check immediate priorities
- **Standard:** Greeting, agenda review, recent context
- **Comprehensive:** Full system check, full context refresh, agenda + priorities + recent work
- **Confidence:** {confidence}
- **Last Updated:** {timestamp}

### Skill Suggestion Mode
- **Current Preference:** {skill_suggestion_mode} (reactive, proactive, balanced)
- **Reactive:** Suggest only when user asks
- **Proactive:** Actively suggest skills and workflows
- **Balanced:** Suggest when relevant but not overwhelming
- **Confidence:** {confidence}
- **Last Updated:** {timestamp}

### Notification Frequency
- **Current Preference:** {notification_frequency} (never, daily, weekly, immediate)
- **Confidence:** {confidence}
- **Last Updated:** {timestamp}

## Time-Based Preferences

### Working Hours
- **Start Time:** {start_time}
- **End Time:** {end_time}
- **Timezone:** {timezone}

### Energy Levels

| Time Period | Energy Level | Preferred Work Type |
|-------------|--------------|---------------------|
| Morning | {morning_energy} | {morning_work} |
| Midday | {midday_energy} | {midday_work} |
| Afternoon | {afternoon_energy} | {afternoon_work} |
| Evening | {evening_energy} | {evening_work} |

## Context-Based Adaptations

### Work Context

| Context | Tone | Detail | Structure |
|---------|------|--------|-----------|
| Client Communication | {client_tone} | {client_detail} | {client_structure} |
| Internal Team | {internal_tone} | {internal_detail} | {internal_structure} |
| Research/Analysis | {research_tone} | {research_detail} | {research_structure} |
| Quick Tasks | {quick_tone} | {quick_detail} | {quick_structure} |
| Deep Work | {deep_tone} | {deep_detail} | {deep_structure} |

### Tool Preferences

| Tool | Preference | Notes |
|------|------------|-------|
| Email | {email_preference} | {email_notes} |
| Slack/Teams | {chat_preference} | {chat_notes} |
| Documentation | {docs_preference} | {docs_notes} |
| Code | {code_preference} | {code_notes} |
| Presentations | {slides_preference} | {slides_notes} |

## Learning History

### Recent Changes

| Date | Preference | Old Value | New Value | Source |
|------|------------|-----------|-----------|--------|
| {date} | {preference} | {old} | {new} | {source} |
| {date} | {preference} | {old} | {new} | {source} |

### Preference Evolution

| Preference | Trend | Stability | Notes |
|-------------|-------|-----------|-------|
| {preference} | {trend} | {stability} | {notes} |

## Confidence Scores

**Overall Profile Confidence:** {overall_confidence}

| Category | Confidence | Notes |
|----------|------------|-------|
| Communication Style | {comm_confidence} | {notes} |
| Skill Preferences | {skill_confidence} | {notes} |
| Workflow Preferences | {workflow_confidence} | {notes} |
| Context Adaptations | {context_confidence} | {notes} |

---

## Usage Instructions

### For All Skills

**Before executing any skill:**
1. Read `personal-os/adaptation/personalization-profile.md`
2. Apply tone, detail level, and structure preferences
3. Check confirmation threshold for current action
4. Adjust output format based on preference
5. Consider context-based adaptations if applicable

### After User Feedback

**Capture feedback:**
1. Note what was corrected (tone, detail, structure, formatting)
2. Identify which preference was violated or needs adjustment
3. Update relevant preference with new value
4. Set initial confidence based on clarity of feedback
5. Update interaction-history.md

### Weekly Review

**Analyze profile:**
1. Check for inconsistent or conflicting preferences
2. Identify preferences that need more data (low confidence)
3. Look for opportunities to increase confidence
4. Report any significant changes to user
5. Suggest profile updates if patterns detected

---

## Examples

### Example 1: User Correction

**User says:** "That was too detailed. Keep it short next time."

**Action:**
1. Update detail_level: "balanced" → "concise"
2. Set confidence: 0.8 (explicit feedback)
3. Record in interaction-history.md
4. Next skill execution: use concise style

### Example 2: Repeated Pattern

**Pattern:** User consistently accepts structured outputs, never refines them

**Action (during weekly review):**
1. Detect pattern in interaction-history.md
2. Increase confidence for output_format: "structured"
3. Consider setting as default across contexts
4. Report to user: "I've noticed you prefer structured outputs. Keeping that going."

### Example 3: Context-Based Preference

**Observation:** User uses casual tone internally but formal tone with clients

**Action:**
1. Update context-based adaptations
2. Set client_tone: "formal", internal_tone: "casual"
3. Increase confidence for both
4. Next email to client: use formal tone
5. Next Slack message: use casual tone

---

## Notes

- **Profile Initialization:** Created during onboarding (5-question interview)
- **Update Frequency:** Real-time for explicit feedback, weekly for pattern-based updates
- **Confidence Decay:** Preferences with low confidence gradually return to default
- **Profile Backup:** Automatic backup before major changes
- **Rollback:** Can rollback to previous profile state if needed
