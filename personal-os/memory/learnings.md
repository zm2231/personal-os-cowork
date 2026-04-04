# Learnings

*This file grows from session summaries and feedback.*

## 2026-03-25
- Initial onboarding completed
- Zain is founder of Cadence (AI consulting/agency) + MSBA candidate graduating Spring 2026
- Building PersonalOS live as a demo for Skool community
- Communication style: direct, analytical, brief — no fluff
- Key Notion workspace: "Big Brain" — all Cadence ops live here
- Team: Zain H (dev), Max Bernstein (client lead), Tam Nguyen
- Active client: Knew Health (Elena is client contact)
- Overdue items flagged in Notion: lighthouse bot updates, Cognitive Fingerprint self-test, Image Prompt Library in NAM

## 2026-03-25 — eLC Class Check Setup
- Successfully established eLC access via osascript + D2L REST API (JavaScript fetch through Chrome)
- Chrome must be open and logged in for D2L API calls to work (session cookies required)
- Claude in Chrome MCP only has 3 tools (file_upload, switch_browser, tabs_close_mcp) — no navigate/read_page; use osascript instead
- D2L API endpoints confirmed: `/d2l/api/le/1.51/{courseId}/dropbox/folders/` for assignments, `/d2l/api/le/1.3/{courseId}/news/` for announcements
- Notion: `notion_append_markdown` works for appending to Daily Huddle pages; `notion_create_page` with data_source parent fails
- Daily Huddle database ID: `2c78aba0-0606-8079-aa2c-dc846089e554`
- MIST 4550 P2 was due Mar 24 @ 11:59 PM — flagged for Zain to verify submission

**Spring 2026 Courses (corrected from outdated task file):**
- MIST 4550 Energy Informatics (ID: 3771561)
- ECON 7950 Competitive Strategy (ID: 3785617)
- MIST 6380 Adv Data Mgmt & Analytics (ID: 3814311)
- MIST 7990 Directed Study (ID: 3774414)
- BUSN 7990 Directed Study in Business (ID: 3782654)

**Upcoming deadlines logged:**
- Mar 31: MIST 4550 P3 (group En-ROADS slides)
- Apr 7: ECON 7950 Assignment 3 (email tmcgahee@uga.edu)
- Apr 7: MIST 6380 Homework 3
- Apr 22: ECON 7950 Data Analysis Project (email tmcgahee@uga.edu)

**Last Updated:** 2026-03-25
