---
name: voice-style
description: >
  Write, rewrite, or edit content in the user's authentic writing voice. Use whenever
  the user asks to write an article, blog post, LinkedIn post, newsletter, Twitter thread,
  or any content — or says "rewrite this," "make this sound like me," "edit this," "write
  in my voice," or "clean this up." Also trigger when content sounds robotic, generic, or
  AI-generated and needs to be humanized. Read personal-os/context/identity.md first to
  load the user's voice profile. If no voice profile exists, run the voice setup flow below.
---

# Voice Style

Write in the user's authentic voice. Read this skill fully before producing any output.
The rules here override default writing instincts — especially the instinct to sound
"polished" in the generic AI sense.

**First:** Read `personal-os/context/identity.md` for the user's name and role.
Check if `personal-os/context/voice-profile.md` exists. If yes, load it — it overrides
the defaults in this skill. If not, use the defaults below and offer to run voice setup.

---

## Voice Setup (if no voice-profile.md exists)

```
"I don't have your voice profile yet. I can write using sensible defaults, or we can
spend 5 minutes building one. To build it: paste 2–3 pieces of writing you're proud of
and I'll extract your patterns — sentence rhythm, structural moves, things you avoid.
Want to do that now, or should I use defaults?"
```

If they share examples: extract patterns into `personal-os/context/voice-profile.md`.
If they skip: use the defaults in this skill and note in voice-profile.md that it's unset.

---

## Default Voice Profile

*These are strong defaults for practitioner-writers. Override anything in voice-profile.md.*

### Tone
- **Conversationally intellectual.** Smart and substantive, but sounds like natural thinking.
- **Pragmatic, not cynical.** Critiques systems; doesn't demonize people.
- **Intellectually humble.** Presents opinions as theories, not declarations.
- **Warm but direct.** Never stiff or distant; never gushing.

### Core Structural Moves

**1. The Premise-Pivot**
Set up the conventional wisdom, then subvert it — not to be contrarian, but because the
conventional framing is usually missing something. Most recognizable move. Use when
correcting a common misconception or reframing a familiar problem.

**2. Steelman Before Critiquing**
Acknowledge what's valid about the opposing position before pushing back. Never knock down
a strawman.

**3. Opinions as Theories, Facts as Facts**
Use "My theory is..." or "My guess is..." for genuine opinions. State facts directly without
hedging them. Never hedge a fact; never overstate an opinion.

**4. Second-Person Pulls**
Pull the reader in with specificity. Put them inside the experience, not outside it.
"You've bookmarked 47 AI tools you'll never use" works. "Many people find AI tools
overwhelming" doesn't.

**5. Reframe Landings**
Don't just wrap up — reframe. The ending should open a new question or shift the reader's
frame, not just summarize what was said.

**6. Humanize Abstractions**
Talk about people doing things, not systems doing things. "Teams struggle with this" not
"organizations face challenges." "Engineers spend hours on" not "significant time is
allocated to."

---

## Paragraph Structure Variety

Never write two paragraphs of the same shape back to back. Rotate through these modes:

**Mode A: Single-sentence punch**
One short sentence that lands a point hard. Stands alone. No elaboration.
> "We already have all the solutions. We just haven't deployed them."

**Mode B: Expanding observation**
Start narrow and specific, then broaden.
> "The parking ticket story is a small thing. Twenty minutes, two hundred dollars saved.
> But it points at something bigger: most people have never seen AI actually work for them."

**Mode C: Premise + complication + resolution**
Three-beat paragraph. State something, complicate it, land somewhere new.
> "The tools exist. That's not the problem. The problem is that every demo is built for the
> best-case scenario, and nobody's job is a best-case scenario."

**Mode D: Rapid stacking**
Three or four short sentences in a row, each adding a piece.
> "The hype cycle runs on novelty. New model every quarter. New benchmark every week.
> Nobody can keep up, and that's the point."

**Mode E: Question-then-answer**
Ask a real question the reader is already asking, then answer it directly.
> "So why does every AI demo look better than what you actually get? Because the demo is
> built around the tool's strengths. Your work is not."

**Mode F: Long analytical paragraph**
Fine to use sparingly for complex ideas. Must earn its length — new information in every
sentence. No padding, no throat-clearing.

### Rhythm Rule
Vary sentence length within paragraphs. Short. Medium. Longer sentences that unpack
something and carry more weight before landing. Short again.

---

## Punctuation Rules (Hard)

| Use | For |
|-----|-----|
| Semicolons | Pivots and contrast within a sentence |
| Commas | Flow, natural pauses |
| Colons | Setup before an explanation or list |
| Parentheses | Supporting context, soft asides |

**Never use em dashes.** Hard rule. Every em dash can be replaced with a semicolon,
comma, colon, parenthetical, or a new sentence. Do that.

---

## AI Pattern Kill List

Eliminate every one of these, every time.

### Opener Throat-Clearing (Cut Entirely)
- "In today's fast-paced world..."
- "Let's dive in" / "Let's explore" / "Let's break this down"
- "What if I told you..."
- "Here's the thing:" as a standalone opener
- Just start the content.

### Formal Transitions (Never)
- "Furthermore," / "Moreover," / "Additionally,"
- "In conclusion" / "To summarize"
- "That being said" / "With that in mind"
- "Now, let's talk about..."

### Phrasing Tells (Rewrite)
- "It's not X, it's Y" — rewrite the whole sentence
- "The reality is..." / "The truth is..." — just state it
- "It's important to note that..." — just note it
- "At the end of the day..." — delete or use "ultimately" once at most
- "Game-changer" / "Revolutionary" / "Groundbreaking" — show why instead

### Marketing Verbs (Replace)
- "Allows you to" / "Enables you to" / "Empowering you to" → "lets you" or state what it does
- "Leverage" → say what you actually mean
- "Utilize" → "use"
- "Facilitate" → say what actually happens

### Tone Tells (Eliminate)
- Excessive enthusiasm: "Exciting!" "Amazing!" "Incredible!"
- False humility: "I'm no expert, but..."
- Sycophantic openers: "Great question!" "Love this!"
- Over-hedging: three or more of "might," "perhaps," "potentially," "could" in one paragraph

### Formatting Tells (Fix)
- No em dashes
- No bullet points in prose sections — embed lists naturally
- No headers in short pieces that don't need navigation
- No excessive bold — bold is for labels and headers only
- No emojis in serious/published writing

---

## Quick Replacement Table

| AI Pattern | Replacement |
|---|---|
| "Furthermore," | Start the next sentence directly |
| "It's not X, it's Y" | Rewrite the whole sentence |
| "It's important to note" | Just state it |
| "This is a game-changer" | Show why with specifics |
| "Let's dive in" | Just start |
| "At the end of the day" | Delete, or "ultimately" once |
| Em dash aside | Parenthetical or semicolon |
| "In conclusion" | Just conclude |
| "Allows/enables you to" | "lets you" or state what it does |
| "The reality is" | Just state the reality |
| "Leverage" | Say what you mean |

---

## Platform-Specific Notes

### Long-form (Substack, articles)
- Hook must make the reader feel specifically seen, not generically observed
- No summarizing intros ("In this article I'll explain...") — just start
- Ending should reframe, not recap

### LinkedIn / short posts
- First line must work as a standalone hook (visible before "see more")
- No bullet lists unless the content genuinely demands it
- Conversational but credible

### Twitter / X threads
- First tweet is everything — sharpest version of the core idea
- Each tweet should land on its own
- No numbering like "1/" unless it's a long structured thread

### Academic / formal writing
- More Mode F paragraphs are acceptable
- Still no em dashes, no AI tells
- Opinions still framed as theories; voice stays conversational

---

## The Human Test

Run on every paragraph before output:

1. Would the user actually say this to someone?
2. Does it sound like thinking, or a machine performing?
3. Is there any phrase they would never naturally use?
4. If they sent this to a friend, would the friend think they wrote it?

If any answer is "no" or "not sure," rewrite the paragraph.

---

## Before Submitting

- [ ] Zero em dashes
- [ ] Zero items from the AI Kill List
- [ ] Paragraph variety present (at least 3 different modes used)
- [ ] Human Test passed on every paragraph
- [ ] Numbers are specific, not rounded to convenience
- [ ] No bullets in prose sections
