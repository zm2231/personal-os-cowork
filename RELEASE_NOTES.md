# Release Notes

## Version 1.1.0

**Released:** March 27, 2026

### What's New

#### Phase 6: Automation Pack (5 new skills)

**task-automation** (9.9 KB)
- Automate repetitive tasks with task macros
- Execute multi-step workflows with single commands
- L3 anticipatory behavior with pattern-based task suggestions

**workflow-orchestrator** (12.2 KB)
- Orchestrate complex multi-step workflows
- Manage dependencies between tasks
- Parallel execution support for independent workflows
- Error handling and retry logic

**notification-manager** (12.8 KB)
- Centralized notification management
- Multi-channel alert configuration
- Notification preferences and scheduling
- Rate limiting and deduplication

**data-sync** (12.4 KB)
- Synchronize data across systems
- Automatic backup scheduling
- Data integrity verification
- Conflict resolution

**scheduled-jobs** (12.6 KB)
- Schedule recurring tasks and maintenance
- Time-based and event-based triggers
- Job history and status tracking
- Dependency management

**Features:**
- All skills include 3 progressive disclosure tiers (L1: Guided, L2: Confident, L3: Anticipatory)
- Session unlock requirement: Session 14+ for all Automation skills
- Full integration between all 5 Automation skills
- Advanced L3 features: predictive scheduling, self-optimization, adaptive behavior, proactive failure prevention

### Documentation Updates

**README.md** - Professional description update
- Removed emojis for cleaner presentation
- Added scalability section
- Documented multi-instance support
- Added work domain switching
- Added semantic search limitations and workarounds

**Metrics:**
- Total skills: 25 (was 20)
- v1.1.0 pack: 5 new skills (59.9 KB)
- v1.1.0 total: 25 skills (654.7 KB content)
- All 6 phases complete

---

## Version 1.0.0

**Released:** March 26, 2026

### Initial Release

#### Complete Feature Set (15 core skills)

**Phase 1: Foundation (3 skills)**
- onboarding/interview.md - 5-question interview system
- onboarding/role-detection.md - Automatic role inference
- meta-system/skill-suggester.md - Intent to skill mapping
- meta-system/system-check.md - Health check and diagnostics

**Phase 2: Workflow Learning (5 skills)**
- core/workflow/daily-routine.md (4.6 KB) - Time-based pattern automation
- core/workflow/shortcuts.md (2.7 KB) - Frequent command shortcuts
- core/learning/pattern-detect.md (8.4 KB) - Weekly pattern synthesis
- core/integration/telegram.md (8.4 KB) - Telegram integration
- core/integration/computer-use.md (13 KB) - Computer use workflows

**Phase 3: Advanced Learning (3 skills)**
- core/learning/self-correction.md (10.4 KB) - Error tracking and learning
- core/learning/recommendations.md (10.5 KB) - Proactive suggestions
- core/learning/optimization.md (14.7 KB) - System optimization

**Templates:**
- templates/weekly-review.md (6.2 KB)
- templates/session-count.md (3.1 KB)
- templates/unlock-settings.md (4.0 KB)
- templates/workflows/form-filler.md (5.0 KB)
- templates/workflows/downloads-organizer.md (6.5 KB)
- templates/workflows/daily-setup.md (6.5 KB)

**Documentation (6 files, 92.8 KB):**
- README.md (13.3 KB) - Project overview and quick start
- CLAUDE.md (29.1 KB) - Main orchestration with Skills Table
- INSTALL.md (15.2 KB) - Installation and setup guide
- CONTRIBUTING.md (16.4 KB) - Contribution guidelines and standards
- PACKAGING.md (16.5 KB) - Packaging and distribution guide
- CHANGELOG.md (7.7 KB) - Version history
- RELEASE_NOTES.md (7.3 KB) - Release notes
- LICENSE (1.1 KB) - MIT license

**Total v1.0.0:**
- Skills: 15 (49.1 KB)
- Templates: 20 KB
- Documentation: 92.8 KB
- **Grand Total: 161.9 KB**

### Key Features

**Progressive Disclosure:**
- Session-count based unlocking (10 levels)
- Skills appear gradually as you use PersonalOS
- Notification when new capabilities unlock

**Skill Progression:**
- 3 levels per skill (L1: Guided, L2: Confident, L3: Anticipatory)
- Automatic leveling based on usage and feedback
- Tier-specific behaviors and capabilities

**Autonomy Ladder:**
- 4 levels: Guardian, Supervised, Trusted, Autonomous
- Natural language control to move up/down
- Safe defaults with explicit opt-in for full autonomy

**Learning System:**
- Implicit signals: tone, corrections, tool preferences, time patterns
- Explicit signals: ratings (1-5), feedback text, preference statements
- Pattern detection: weekly synthesis reports
- Self-correction: error tracking, fix proposals, learning from failures

**Multi-Platform:**
- Terminal: Primary interface via Cowork CLI
- Telegram: Mobile access with slash commands and voice messages
- Computer Use: Desktop automation with screenshots and GUI control

---

## Migration Guide

### Upgrading from v1.0.0 to v1.1.0

**No user data migration required.**

What you need to do:
1. `git pull` to update system code and skills
2. All personal-os/ data files are preserved automatically
3. New skills will be available at Session 14+

**New Skills Available:**
- task-automation
- workflow-orchestrator
- notification-manager
- data-sync
- scheduled-jobs

**Backward Compatibility:** All v1.0.0 features continue to work as before.

---

## Known Issues

### Current Limitations

1. **Semantic Search:** Uses Cowork's built-in context loading. Advanced semantic search (Khoj-style) planned for v1.2.0
2. **Skill Versioning:** Version metadata exists but compatibility checking in progress
3. **Cloud Sync:** Self-hosted only. Cloud option planned for v1.2.0
4. **Multi-Instance Context:** Both instances can't be loaded simultaneously in same Cowork context (use context switching or separate workspaces)

### Workarounds

**Semantic Search:**
```
You: "Search my notes for 'project planning'"
PersonalOS: Uses Cowork's semantic search over your personal-os/memory/ files
```

**Multi-Instance:**
```
You: "Switch to my work instance"
PersonalOS: Context switched. Loading work-specific files and settings.
```

---

## Reporting Issues

Found a bug or have a feature request? Please:

1. Check troubleshooting section in README.md first
2. Search existing issues on GitHub
3. Create a new issue with:
   - Clear description
   - Steps to reproduce
   - Expected vs actual behavior
   - Your environment (Cowork version, OS, etc.)

---

## Upgrade Notes

### For Contributors

All pull requests should:
1. Follow Cowork frontmatter format
2. Include skill-level modifiers (L1/L2/L3)
3. Add "After This Skill" sections for chaining
4. Test all 3 progressive tiers
5. Update relevant documentation

### For Users

When upgrading:
1. Backup your personal-os/ directory before upgrade
2. Review CHANGELOG.md for new features
3. Run `system-check` after upgrade to verify installation
