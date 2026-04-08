# PersonalOS — Developer Improvement Notes

*Written post-session by the AI agent running onboarding. These are system-level observations, not user-specific. Intended for the developer maintaining and evolving this project.*

---

## 1. Onboarding: Capture Notification/Output Preferences Explicitly

**Problem:** The current interview has no question about where the user wants output delivered. As a result, the AI defaults to whatever tool it knows best (in this case, Notion) and hardcodes it everywhere — automations, summaries, digests, all of it.

**Fix:** Add a dedicated onboarding question: *"When I have something to surface to you, how do you want to receive it?"* Present options: Notion, Telegram, iMessage, Email, Slack, or other. Map answer types to use cases:
- Time-sensitive alerts → push channel (Telegram, iMessage)
- Archivable records → knowledge system (Notion, Obsidian)
- Team-facing outputs → wherever the team lives

Store this in `context/notifications.md` and reference it in every automation template. No automation should have a hardcoded output destination.

---

## 2. Onboarding: Discover Connected Tools and Active Stack

**Problem:** The interview asks about priorities and communication style but never inventories what tools the user actually has running. The AI discovers integrations piecemeal (Telegram found in a snapshot file, eLC discovered via memory file, Obsidian vault mentioned but never integrated).

**Fix:** Add a **Step 0 Tool Discovery** pass that goes beyond just checking MCP connectivity. Actively ask:
- "What's your primary task management system?" (Notion / Linear / Obsidian / other)
- "Do you have any custom tools or internal systems I should know about?" (catches things like kg, Zira, Cadence Blue)
- "Where does your team communicate?" (Slack / Discord / iMessage / Telegram)
- "How do you capture meetings?" (Fireflies / Granola / manual)

These answers directly determine how every downstream automation is built. Running discovery after automations are created forces retroactive rewrites.

---

## 3. Onboarding: Discover Developer/Technical Workflow Specifically

**Problem:** The current onboarding treats all users identically. A developer who has built custom AI infrastructure, agent frameworks, and MCP servers is fundamentally different from a non-technical user — but the system asks them the same 5 questions.

**Fix:** After role detection, branch the onboarding flow for technical users. Additional questions to ask:
- "What does a typical workday look like for you technically?" (coding sessions, build cycles, deploy cadence)
- "Do you have any custom tools or scripts that are central to how you work?"
- "What repositories are active right now?"
- "How do you move from a client conversation to implementation?" (the handoff workflow)

This isn't about gathering data for its own sake — it's about knowing how to be immediately useful rather than surfacing generic suggestions that miss the actual workflow.

---

## 4. Automations: Never Hardcode Delivery Destinations

**Problem:** All generated automations output to a single platform (Notion in this session). This is a design assumption masquerading as a design decision. It creates fragile prompts that break if the user's primary tool changes or if they want a given output somewhere different.

**Fix:** Every automation template should have an explicit `## Output` section populated from the user's `notifications.md`. Structure it as:
```
## Output
- Summary → [user's push channel, e.g. Telegram]
- Archive → [user's knowledge system, e.g. Notion / Obsidian]
- Team-facing → [user's team channel, e.g. Slack]
```
If `notifications.md` doesn't exist, the automation should prompt the user to define it before proceeding — not default silently.

---

## 5. Automations: Never Assume Meeting/Event Metadata

**Problem:** The AI assumed a meeting cadence ("15-minute huddle"), a client relationship status ("active client"), and a task context from a template rather than from the user. These assumptions get baked into automation prompts and silently produce wrong output.

**Fix:** Any metadata that wasn't explicitly stated by the user should be marked as a confidence flag and confirmed before being written into an automation. Meeting duration, client status, team roles, recurring patterns — none of these should be inferred from secondary sources (templates, Notion page text) and presented as fact.

---

## 6. Onboarding: Ask About Telegram / Push Notification Setup Explicitly

**Problem:** Telegram was already configured (bot, chat ID, curl pattern) but the onboarding flow never surfaced it. It was discovered later from a snapshot file written by a prior session, not from the user.

**Fix:** Add an explicit push notification question to onboarding: *"Do you have Telegram, Slack, or any other notification channel set up for receiving alerts?"* If yes, capture bot token, chat ID, and preferred format, and save to `context/notifications.md`. Every automation that surfaces time-sensitive information should push to this channel by default.

---

## 7. Context Files: Separate "What I Know" from "What I Assumed"

**Problem:** context files (team-directory.md, glossary.md) mix confirmed facts with inferences. "Knew Health is an active client" was written as fact based on a meeting note; the user later clarified it's a new/prospective client. This is a data integrity problem.

**Fix:** Add a confidence marker system to context files. Two tiers:
- `[confirmed]` — user stated this directly
- `[inferred]` — derived from documents/patterns, not explicitly confirmed

Anything `[inferred]` should be surfaced in `confidence-flags.md` until the user confirms or corrects it. The AI should not write inferences as facts into permanent context.

---

## 8. Autonomy Level: Default Should Be Context-Sensitive

**Problem:** L1 Guardian (confirm every action) is appropriate for a first-time non-technical user. It is wrong for a developer who built custom AI infrastructure. Applying the same default to both creates friction and erodes trust.

**Fix:** During role detection, use technical sophistication signals to set a smarter default:
- Non-technical user, first-time AI assistant → L1 (Guardian)
- Technical user, familiar with AI tooling → L2 (Supervised)
- Developer building their own AI systems → L3 (Trusted) as initial default

Still explain what the level means and let the user adjust. But start at the right place.

---

## 9. Workflow Discovery: Use Conversation, Not Just a Form

**Problem:** The 5-question interview is a form. Forms are efficient but they produce surface-level answers. Users don't naturally think about their workflows in isolation — they think about them in context of problems they're trying to solve.

**Fix:** After the structured 5 questions, add a brief open-ended discovery prompt: *"Walk me through what yesterday looked like. What did you work on, what felt like friction, what did you wish you had help with?"* This surfaces workflow patterns that no form question would catch — and gives the AI concrete, specific context to build from rather than generic priority statements.

---

## 10. Snapshot.md: Treat as a Living Document, Not a One-Time Output

**Problem:** snapshot.md is generated at onboarding and then becomes stale. Confidence flags get resolved, team members get clarified, courses get corrected — but snapshot doesn't auto-update.

**Fix:** Any time a context file is updated (identity.md, team-directory.md, confidence-flags.md, etc.), the relevant section of snapshot.md should be updated in the same operation. Snapshot should always reflect current state, not initial state. Add a "staleness check" to the session-start procedure: if any source file has been updated since snapshot's `Last Updated` timestamp, regenerate the relevant snapshot sections.

---

## 11. Obsidian / Local Vault: Needs an Integration Strategy

**Problem:** Users who maintain Obsidian vaults (or similar local knowledge bases) have a primary system the AI can't directly access. The vault gets mentioned but never integrated, creating a split-brain situation where the AI operates from Notion while the user's real knowledge lives locally.

**Fix:** During onboarding, if the user mentions a local vault or knowledge system, prompt them to: (a) mount the folder in their Cowork session, (b) point to specific files the AI should read regularly, or (c) set up a sync mechanism. Document the access method in `context/working-preferences.md`. Automations should reference vault files as a first-class source alongside cloud tools.

---

*These notes are intended as a prioritized backlog for the developer. Items 1–4 are foundational and affect every subsequent session. Items 5–11 are quality improvements that compound over time.*

**Date:** 2026-03-25
**Source:** Post-session review by PersonalOS agent (onboarding run)
