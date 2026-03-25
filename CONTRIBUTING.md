# Contributing to PersonalOS for Cowork

Thank you for your interest in contributing to PersonalOS! This guide explains how to contribute, what we're looking for, and our standards for contributions.

**Version:** 1.0.0
**Last Updated:** 2026-03-26

---

## Table of Contents

1. [Types of Contributions](#types-of-contributions)
2. [Getting Started](#getting-started)
3. [Skill Development Standards](#skill-development-standards)
4. [Skill Pack Guidelines](#skill-pack-guidelines)
5. [Testing Your Contributions](#testing-your-contributions)
6. [Submission Process](#submission-process)
7. [Code of Conduct](#code-of-conduct)

---

## Types of Contributions

We welcome contributions in these areas:

### 1. New Skills

Add new capabilities to existing skill packs or create entirely new skill packs.

**Examples:**
- Adding a `calendar-sync` skill to Personal Management
- Creating a new `finance-tracker` skill pack
- Extending Communication with `slack-integration`

### 2. Skill Pack Improvements

Enhance existing skills and packs.

**Examples:**
- Fix bugs in existing skills
- Add L2/L3 behavior to L1-only skills
- Improve error handling
- Add better examples

### 3. Documentation

Improve documentation, guides, and examples.

**Examples:**
- Fix typos or unclear explanations
- Add more examples to skill files
- Create tutorials or guides
- Translate documentation to other languages

### 4. Bug Reports

Report bugs you encounter.

**Include:**
- Steps to reproduce
- Expected vs actual behavior
- Cowork version
- PersonalOS version
- Screenshots if relevant

### 5. Feature Requests

Suggest new features or capabilities.

**Include:**
- Use case description
- Why this feature would be valuable
- How it integrates with existing features
- Implementation ideas (optional)

---

## Getting Started

### Fork and Clone

1. **Fork the repository:**
   - Go to https://github.com/cadence-rd/personal-os-cowork
   - Click "Fork" button

2. **Clone your fork:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/personal-os-cowork.git
   cd personal-os-cowork
   ```

3. **Add upstream remote:**
   ```bash
   git remote add upstream https://github.com/cadence-rd/personal-os-cowork.git
   ```

### Set Up Development Environment

1. **Create a branch:**
   ```bash
   git checkout -b feature/my-new-skill
   # or
   git checkout -b fix/fix-bug-in-skill
   ```

2. **Load PersonalOS in Cowork:**
   - Point Cowork to your fork directory
   - Run onboarding if needed

3. **Test your changes:**
   - Make changes to skill files
   - Test in Cowork
   - Verify behavior matches expected

### Keep Your Fork Updated

```bash
# Fetch upstream changes
git fetch upstream

# Merge upstream changes into your branch
git merge upstream/main

# Push to your fork
git push origin feature/my-new-skill
```

---

## Skill Development Standards

### Required Frontmatter

Every skill MUST include Cowork-compatible frontmatter:

```markdown
---
name: skill-name
description: Brief description (1-2 sentences)
version: 1.0.0
type: skill
tier: core|optional|experimental
tags: [tag1, tag2, tag3]
triggers:
  - "phrase user types"
  - "another trigger phrase"
frequency: on-demand|automatic|periodic
cowork:
  requires_context:
    - personal-os/context/identity.md
    - personal-os/context/communication-style.md
  creates_files:
    - personal-os/memory/patterns.md
  skill_levels:
    - L1: Guided - behavior description
    - L2: Confident - behavior description
    - L3: Anticipatory - behavior description
---

# Skill Content
```

**Frontmatter Fields Explained:**

- `name`: Unique skill identifier (kebab-case)
- `description`: 1-2 sentence description for Skills Table
- `version`: Semantic version (MAJOR.MINOR.PATCH)
- `type`: Always `skill` for PersonalOS
- `tier`: `core` (essential), `optional` (nice-to-have), `experimental` (testing)
- `tags`: Keywords for categorization and search
- `triggers`: Phrases that trigger this skill
- `frequency`: When skill runs
  - `on-demand`: User invokes explicitly
  - `automatic`: Runs automatically (e.g., session-summary)
  - `periodic`: Runs on schedule (e.g., pattern-detect weekly)
- `cowork`: Cowork-specific configuration
  - `requires_context`: Files that must exist before skill runs
  - `creates_files`: Files this skill creates
  - `skill_levels`: L1/L2/L3 behavior modifiers

### Skill Structure

Every skill must follow this structure:

```markdown
# [Skill Name]

## Purpose
[What this skill does and why it matters]

## When to Use
[Conditions for when this skill should be triggered]

## Prerequisites
[Required context files, skill levels, user configurations]

## Process

### Level 1: Guided (Default)
[Step-by-step instructions with confirmation prompts]

### Level 2: Confident (After 5+ successful uses)
[Streamlined process, skips unnecessary questions]

### Level 3: Anticipatory (After 15+ uses + positive feedback)
[Proactive triggering, pre-populated from patterns]

## Success Criteria
[How to know the skill completed successfully]

## Error Handling
[What to do if something goes wrong]

## After This Skill
[Suggestions for what to do next]
```

### Best Practices

1. **Start with L1**: Every skill must have L1 behavior defined
2. **Define L2 and L3**: Even if not implemented, describe what they would do
3. **Use Natural Language**: Skills are prose, not code—write them for humans
4. **Check Context Files**: Always verify required files exist before proceeding
5. **Provide Clear Feedback**: Tell the user what's happening at each step
6. **Handle Errors Gracefully**: If something fails, explain what happened and what to do
7. **Add Examples**: Show what the skill looks like in action
8. **Update CLAUDE.md**: Add new skills to the Skills Table

### Example: Complete Skill

```markdown
---
name: daily-agenda
description: Generate prioritized agenda from current priorities
version: 1.0.0
type: skill
tier: core
tags: [planning, priorities, session-start]
triggers:
  - "agenda"
  - "what's my agenda"
  - "what should i focus on"
  - "morning plan"
  - "daily plan"
frequency: on-demand
cowork:
  requires_context:
    - personal-os/context/identity.md
    - personal-os/context/communication-style.md
    - personal-os/memory/current-priorities.md
  creates_files: []
  skill_levels:
    - L1: Guided - Asks which priorities to include, confirms output format
    - L2: Confident - Uses recent priorities, formats based on communication-style.md
    - L3: Anticipatory - Auto-generates at morning_trigger time, pre-fills from previous day
---

# Daily Agenda

## Purpose
Generate a prioritized daily agenda from your current priorities, helping you focus on what matters most.

## When to Use
- User asks for agenda, plan, or focus areas
- At the start of a session or day
- When priorities change and you need realignment

## Prerequisites
- `personal-os/context/identity.md` must exist (name, role)
- `personal-os/context/communication-style.md` must exist (tone, formality)
- `personal-os/memory/current-priorities.md` must exist (active priorities)

## Process

### Level 1: Guided (Default)

**Step 1: Read Context**
```
I'll read your identity, communication style, and priorities. Ready?
```
- Read `personal-os/context/identity.md`
- Read `personal-os/context/communication-style.md`
- Read `personal-os/memory/current-priorities.md`

**Step 2: Confirm Output Format**
```
Based on your communication style (formal/casual), I'll generate a [format] agenda.
Use: brief / detailed / bullet-points / narrative
```
- Wait for user input on format preference

**Step 3: Generate Agenda**
- Extract priorities from `current-priorities.md`
- Order by urgency and importance
- Format according to user preference
- Apply communication style (formal/casual, detailed/concise)

**Step 4: Present Agenda**
```
Here's your agenda for today:

[Agenda content]

Ready to start working?
```
- Show agenda
- Ask confirmation before proceeding

### Level 2: Confident (After 5+ successful uses)

**Step 1: Load Context**
- Read identity, communication-style, current-priorities silently
- No confirmation needed

**Step 2: Generate Agenda**
- Use most recent priorities
- Format based on `communication-style.md` (no need to ask)
- Order by urgency/importance automatically

**Step 3: Present Agenda**
```
Your agenda today:

[Agenda content]

Start with: [highest priority item]
```
- Show agenda immediately
- Suggest starting point

### Level 3: Anticipatory (After 15+ uses + positive feedback)

**Step 1: Auto-Generate at Morning Trigger**
- If `morning_trigger` is enabled in `working-preferences.md`
- Generate agenda automatically at specified time
- Pre-fill from yesterday's session-summary

**Step 2: Present Without Prompt**
```
Good morning, [name]! ☀️

Your agenda today:

[Agenda content]

I noticed you usually start with [highest-priority category].
Shall I begin there?
```
- Proactively show agenda
- Suggest starting point based on patterns

**Step 3: Auto-Update from Patterns**
- Check `personal-os/memory/patterns.md` for recurring tasks
- Add recurring tasks to agenda automatically
- Flag new or changed priorities

## Success Criteria
✅ Agenda includes all active priorities
✅ Priorities are ordered by urgency/importance
✅ Format matches user communication style
✅ User confirms or engages with agenda
✅ User can start working immediately

## Error Handling

**If `current-priorities.md` is missing:**
```
I can't find your current priorities. Let me check your setup.
[Run system-check]
```

**If `current-priorities.md` is empty:**
```
Your priorities list is empty. Would you like to:
1. Update priorities now
2. Create a general agenda based on your role
```

**If communication-style.md is missing:**
```
I don't know your preferred format yet. Brief or detailed?
```

**If user rejects agenda:**
```
No problem. What would you like to focus on instead?
```

## After This Skill

Suggested next steps:
- If working on priorities: "I'll start with [priority]"
- If new priorities emerge: "Update my priorities"
- If session continues: Use relevant skill based on task

## Integration Notes

- Works with `session-summary`: Update priorities after session
- Works with `pattern-detect`: Auto-add recurring tasks
- Works with `shortcuts`: Save common agenda formats as shortcuts

## Changelog
- v1.0.0: Initial release with L1/L2/L3 behavior
```

---

## Skill Pack Guidelines

### Creating a New Skill Pack

1. **Create Directory Structure:**
   ```
   skill-packs/my-new-pack/
   ├── README.md          # Pack overview
   ├── INDEX.md          # Pack skill index (for progressive loading)
   └── skills/
       ├── skill-1.md
       ├── skill-2.md
       └── skill-3.md
   ```

2. **Create README.md:**
   ```markdown
   # [Pack Name]

   Brief description of what this pack does.

   ## Skills in This Pack
   - [skill-name]: Description
   - [skill-name]: Description

   ## Prerequisites
   - Any required Cowork features
   - Any other PersonalOS skill packs

   ## Setup
   Instructions for using this pack.
   ```

3. **Create INDEX.md:**
   ```markdown
   # [Pack Name] - Skill Index

   <!-- Progressive disclosure: Only pack name + brief description here.
        Full skill details in individual skill files. -->

   ## Skills

   | Skill | Description | Tier |
   |-------|-------------|------|
   | skill-1 | Brief description | core |
   | skill-2 | Brief description | optional |
   ```

4. **Follow Skill Standards:** Each skill must follow the [Skill Development Standards](#skill-development-standards)

### Adding to Existing Pack

1. **Follow Directory Structure:** Place skill in appropriate pack directory
2. **Update INDEX.md:** Add skill to pack's INDEX.md
3. **Update README.md:** If relevant, mention new skill in pack README
4. **Update CLAUDE.md:** Add skill to main Skills Table

---

## Testing Your Contributions

### Test Locally

1. **Load Your Changes:**
   - Point Cowork to your fork directory
   - Ensure CLAUDE.md is loaded

2. **Run Onboarding** (if testing onboarding-related changes):
   ```
   You: "Set up my PersonalOS"
   ```

3. **Test Each Skill:**
   - Trigger skill via natural language
   - Verify L1 behavior works correctly
   - Test error handling (delete context files, empty files)
   - Verify success criteria are met

4. **Test L2/L3 Behavior:**
   - Manually set skill level in `skill-levels.md`
   - Test L2 behavior
   - Test L3 behavior

5. **Test Progressive Unlock:**
   - Adjust session count in `session-count.md`
   - Verify skill unlocks at correct threshold
   - Verify unlock message appears

### Test Checklist

Before submitting, ensure:

- [ ] Frontmatter is valid YAML
- [ ] All required frontmatter fields present
- [ ] L1 behavior is complete and tested
- [ ] L2 and L3 behavior is described (even if not implemented)
- [ ] Error handling covers all failure cases
- [ ] Skill is added to appropriate INDEX.md
- [ ] Skill is added to CLAUDE.md Skills Table
- [ ] Documentation is clear and complete
- [ ] Examples demonstrate skill in action
- [ ] Tested with Cowork (current version)

### Test with Different Configurations

- [ ] Fresh install (no existing personal-os/ data)
- [ ] Existing install (with personal-os/ data)
- [ ] With autonomy level 1 (Guardian)
- [ ] With autonomy level 4 (Autonomous)
- [ ] With and without Telegram integration
- [ ] With and without Computer Use

---

## Submission Process

### Pull Request Guidelines

1. **Create a Pull Request:**
   - Go to your fork on GitHub
   - Click "Pull Request"
   - Choose a clear title: `Add [feature]` or `Fix [bug]`

2. **Describe Your Changes:**
   - What you added/fixed
   - Why this change is valuable
   - How you tested it
   - Screenshots if relevant

3. **Link to Issues:**
   - If fixing a bug, reference issue number: `Fixes #123`
   - If implementing a feature, reference issue: `Implements #456`

### Review Process

1. **Automated Checks:**
   - YAML validation (frontmatter)
   - Markdown linting
   - Skill structure validation

2. **Manual Review:**
   - Code review of skill content
   - Testing by maintainers
   - Feedback and iteration

3. **Approval:**
   - At least one maintainer approval required
   - All automated checks must pass
   - Addressed all feedback

### Merge Process

1. **Squash and Merge:**
   - Pull requests are squashed into single commit
   - Commit message: `[feature] Description` or `[fix] Description`

2. **Release:**
   - Changes are included in next release
   - Changelog is updated
   - Version is bumped (if breaking change)

---

## Code of Conduct

### Our Pledge

We are committed to making the PersonalOS community a welcoming and inclusive space for everyone, regardless of:

- Age, body size, disability, ethnicity, gender identity and expression
- Level of experience, education, socioeconomic status, nationality
- Personal appearance, race, religion, or sexual identity and orientation

### Our Standards

**Positive Behavior:**
- Using welcoming and inclusive language
- Being respectful of differing viewpoints and experiences
- Gracefully accepting constructive criticism
- Focusing on what is best for the community
- Showing empathy towards other community members

**Unacceptable Behavior:**
- Harassment, trolling, or derogatory comments
- Personal attacks or insulting language
- Public or private harassment
- Publishing others' private information without permission
- Other unethical or unprofessional conduct

### Enforcement

**Reporting Issues:**
- Email: maintainers@personal-os.cowork
- GitHub: Report via "Report abuse" or open an issue

**Consequences:**
- Verbal warning for first offense
- Temporary ban for repeated offenses
- Permanent ban for severe violations

---

## Getting Help

### Questions About Contributing

- Open a GitHub issue with `question` label
- Join Cowork Discord: [Link]
- Check documentation first: [Link to wiki]

### Issues with PersonalOS

- Report bugs via GitHub issues
- Provide detailed reproduction steps
- Include screenshots if relevant

---

## Recognition

Contributors are recognized in:
- CONTRIBUTORS.md file
- Release notes for each version
- GitHub contributor graphs

**All contributions are valued!** Whether it's a bug fix, new skill, documentation improvement, or feature request—every contribution makes PersonalOS better.

---

Thank you for contributing to PersonalOS for Cowork! 🚀
