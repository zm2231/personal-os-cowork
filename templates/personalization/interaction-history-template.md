# Interaction History Template

**File:** `personal-os/adaptation/interaction-history.md`
**Purpose:** Track all user interactions with skills for personalization learning

---

# Interaction History

**Started:** 2026-03-27
**Total Interactions:** 0

---

## Recent Interactions

### {date} - {time}

**Skill:** {skill_name}
**User Request:** "{user_request}"

**Skill Response:**
- **Tone:** {tone_used}
- **Detail Level:** {detail_used}
- **Structure:** {structure_used}
- **Formatting:** {formatting_used}
- **Duration:** {duration}

**User Feedback:**
- **Type:** {feedback_type} (none, approval, correction, refinement, rejection)
- **Specific Feedback:** "{feedback_text}"

**Learning Extracted:**
- **Preference Updated:** {preference_name}
- **Old Value:** {old_value}
- **New Value:** {new_value}
- **Confidence Set:** {confidence}
- **Reason:** {reasoning}

**Context:**
- **Time of Day:** {time}
- **Work Context:** {context}
- **Recurring Pattern:** {pattern_if_any}

---

## Skill Performance Summary

### {skill_name}

| Metric | Value | Trend |
|--------|-------|-------|
| Total Uses | {count} | {trend} |
| Corrections | {count} | {trend} |
| Approvals | {count} | {trend} |
| Rejections | {count} | {trend} |
| Avg Iterations | {number} | {trend} |
| Acceptance Rate | {percentage} | {trend} |
| Last Used | {date} | - |

**Common Corrections:**
- {correction_type}: {count} times
- {correction_type}: {count} times

**Performance Notes:**
- {notes_about_performance_trends}

---

## Feedback Patterns

### Tone Corrections

| Date | Skill | Old Tone | New Tone | Reason |
|------|-------|----------|----------|--------|
| {date} | {skill} | {old} | {new} | {reason} |
| {date} | {skill} | {old} | {new} | {reason} |

**Analysis:** {analysis_of_tone_preferences}

---

### Detail Level Corrections

| Date | Skill | Old Level | New Level | Reason |
|------|-------|-----------|-----------|--------|
| {date} | {skill} | {old} | {new} | {reason} |
| {date} | {skill} | {old} | {new} | {reason} |

**Analysis:** {analysis_of_detail_preferences}

---

### Structure Corrections

| Date | Skill | Old Structure | New Structure | Reason |
|------|-------|---------------|---------------|--------|
| {date} | {skill} | {old} | {new} | {reason} |
| {date} | {skill} | {old} | {new} | {reason} |

**Analysis:** {analysis_of_structure_preferences}

---

## Workflow Patterns

### Recurring Skill Sequences

**Pattern ID:** {pattern_id}
**Sequence:** [{skill1}, {skill2}, {skill3}]
**Frequency:** {count} times
**Last Seen:** {date}
**Time Between Uses:** {avg_time}
**Context:** {context_pattern}

**Suggestion:** {suggestion_if_any}

---

### Frequently Used Combinations

**Skill Pair:** {skill1} + {skill2}
**Frequency:** {count} times
**Common Context:** {context}
**User Satisfaction:** {rating}
**Suggestion:** {suggestion_if_any}

---

### Parameter Defaults

**Skill:** {skill_name}
**Parameter:** {parameter_name}
**User's Preferred Value:** {value}
**Frequency:** {count}/{total} times
**Confidence:** {confidence}
**Suggestion:** {suggest_as_default}

---

## Time-Based Patterns

### Time of Day Usage

| Time Period | Most Used Skills | Preferred Tone | Preferred Detail |
|-------------|------------------|----------------|-----------------|
| Morning | {skills} | {tone} | {detail} |
| Midday | {skills} | {tone} | {detail} |
| Afternoon | {skills} | {tone} | {detail} |
| Evening | {skills} | {tone} | {detail} |

**Analysis:** {analysis_of_time_based_patterns}

---

### Weekly Patterns

| Day | Skill Count | Most Common | Work Type |
|-----|-------------|-------------|-----------|
| Monday | {count} | {skill} | {type} |
| Tuesday | {count} | {skill} | {type} |
| Wednesday | {count} | {skill} | {type} |
| Thursday | {count} | {skill} | {type} |
| Friday | {count} | {skill} | {type} |
| Saturday | {count} | {skill} | {type} |
| Sunday | {count} | {skill} | {type} |

**Analysis:** {analysis_of_weekly_patterns}

---

## Context-Based Patterns

### Work Context Usage

| Context | Most Used Skills | Preferred Tone | Preferred Detail |
|---------|------------------|----------------|-----------------|
| Client Work | {skills} | {tone} | {detail} |
| Internal Team | {skills} | {tone} | {detail} |
| Research | {skills} | {tone} | {detail} |
| Quick Tasks | {skills} | {tone} | {detail} |
| Deep Work | {skills} | {tone} | {detail} |

**Analysis:** {analysis_of_context_patterns}

---

## Satisfaction Signals

### Positive Indicators

| Date | Skill | Signal | Details |
|------|-------|--------|---------|
| {date} | {skill} | User repeated skill | {context} |
| {date} | {skill} | Zero corrections | {context} |
| {date} | {skill} | Positive feedback | {feedback} |
| {date} | {skill} | Quick acceptance | {time} |

---

### Negative Indicators

| Date | Skill | Signal | Details |
|------|-------|--------|---------|
| {date} | {skill} | Multiple corrections | {count} corrections |
| {date} | {skill} | User abandoned skill | {context} |
| {date} | {skill} | Negative feedback | {feedback} |
| {date} | {skill} | Long iteration time | {time} |

---

## Learning Insights

### Strong Preferences (High Confidence)

| Preference | Value | Confidence | Evidence |
|------------|-------|------------|----------|
| {preference} | {value} | {confidence} | {evidence_count} interactions |

---

### Weak Preferences (Low Confidence - Need More Data)

| Preference | Value | Confidence | Need |
|------------|-------|------------|------|
| {preference} | {value} | {confidence} | {what_is_needed} |

---

### Conflicting Signals

| Preference | Signal A | Signal B | Resolution |
|------------|----------|----------|------------|
| {preference} | {signal_a} | {signal_b} | {resolution_or_pending} |

---

## Monthly Summary

### {Month Year}

**Total Interactions:** {count}
**Unique Skills Used:** {count}
**Average Session Length:** {time}
**Overall Satisfaction:** {rating}

**Top Skills:**
1. {skill} ({count} uses)
2. {skill} ({count} uses)
3. {skill} ({count} uses)

**Key Learnings:**
- {learning_1}
- {learning_2}
- {learning_3}

**Preferences Evolved:**
- {preference_1}: {old} → {new}
- {preference_2}: {old} → {new}

**Suggestions for Next Month:**
- {suggestion_1}
- {suggestion_2}

---

## Archive

### {Old Month Year}

*Archived to `interaction-history-{YYYY-MM}.md`*

---

## Usage Instructions

### For All Skills

**After executing a skill:**
1. Log interaction to interaction-history.md
2. Record skill execution details (tone, detail, structure, duration)
3. Capture user feedback (if any)
4. Extract learning if feedback indicates preference
5. Update performance metrics for the skill

### Weekly Analysis

**Run weekly:**
1. Analyze recent interactions (last 7 days)
2. Identify patterns in tone, detail, structure corrections
3. Detect recurring skill sequences
4. Find frequently used parameter values
5. Generate preference update suggestions
6. Update preference-learnings.md

### Monthly Review

**Run monthly:**
1. Summarize all interactions for the month
2. Identify major preference shifts
3. Archive old interactions to monthly file
4. Generate monthly insights report
5. Update personalization-profile.md with high-confidence learnings

---

## Notes

- **Log Rotation:** Archive monthly to keep file size manageable
- **Privacy:** No sensitive content logged, only metadata and preferences
- **Performance:** Update skill performance metrics after each use
- **Patterns:** Run pattern detection weekly to find workflows to optimize
- **Confidence:** Use interaction count and consistency to calculate confidence
