# Installed Skill Packs

*Manages which skill packs are installed. Onboarding writes here — not to CLAUDE.md.*
*This file is user data — safe to modify, not overwritten by git pull.*

## Currently Installed

| Pack | Installed | Reason |
|---|---|---|
| Core skills | Always | Built-in |

## Available Packs

Install by saying "add the [pack name] skills" or reading the pack's INDEX.md.

| Pack | Skills | Best For |
|---|---|---|
| meta-system | skill-suggester, system-check | Everyone |

## To Add a Community Skill

When user shares a skill or says "add this skill":
1. Save it to `.claude/skills/<name>/SKILL.md`
2. Verify it has `name:` and `description:` frontmatter
3. Add the pack name + date to the "Currently Installed" table above
4. Claude Code auto-discovers it — no further registration needed

**Last Updated:** [date]
