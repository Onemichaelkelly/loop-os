---
name: setup
description: First-run guided setup. Interviews the user one question at a time, fills in CLAUDE.md, creates loops.md and the memory folder, then runs the first /start. Use when the user says "/setup", "set this up", "get me started", or when /start finds no filled-in CLAUDE.md or loops.md.
---

# /setup — the system builds itself

## What this is

A new user has cloned Loop OS. The framework exists but knows nothing about them. This skill turns a blank clone into a running system through a short interview — **one question at a time, never a questionnaire.** Total time should be 10–15 minutes. If the user wants to stop early, everything already answered gets saved; setup can resume later.

## Ground rules for the interview

- ONE question per response. Wait for the answer before the next.
- Explain in one sentence why you're asking, when it isn't obvious.
- Use their words in the files — don't paraphrase their personality away.
- Never invent preferences, rules, or facts they didn't state.
- Never ask for passwords, account numbers, or anything that shouldn't live in a text file.
- No guilt, no pressure, no "great answer!" filler. Warm and direct.

## Steps

### 0. Check what already exists

Look for `CLAUDE.md`, `loops.md`, and `memory/` in the working directory. If CLAUDE.md is already filled in (no `[bracketed placeholders]` remaining), say so and offer to update rather than restart. If this is a fresh clone, say what's about to happen in two sentences: "I'm going to ask you a handful of questions, one at a time, and build your system files from the answers. Ready?"

### 1. Identity (fills the "About Me" section)

Ask, in separate turns:
1. "What should I call you, and what do you do?" (name + one-line role)
2. "What are you building or working toward right now — the one or two things that matter most?"

### 2. Working style (fills "My Patterns" and "Preferences")

3. "When you stall or avoid something, what does that usually look like — and what actually helps you get moving again?" (This shapes how the system talks to them when stuck. If they don't know, skip it — the section fills in over time.)
4. "How do you want me to communicate? Short or detailed, blunt or gentle, anything that drives you crazy?"

### 3. Hard rules (fills "My Hard Rules")

5. "What should I never do without asking — and what should I never do at all? Think: sending things, spending money, work hours you protect." (Offer 2–3 examples only if they're stuck.)

### 4. The first loops (creates loops.md)

6. "Last one: brain-dump everything on your plate right now. Messy is fine — one line each, don't organize it."

From the dump, build `loops.md` from `templates/loops.md`:
- Pick a candidate 🎯 + two supporters for THE 3 (tomorrow's, not tonight's) — propose, let them adjust.
- Anything owed to them by someone else → Waiting For with a follow-up-by date.
- Everything else → Backlog, verbatim.
- Leave "Last session" as: `Wins: set the system up · Standing: fresh start · Next: run /start tomorrow morning`.

### 5. Write the files, confirm each

In order, confirming each in one line:
1. Write the filled-in `CLAUDE.md` (replace every bracketed placeholder; leave "My Patterns" honest — sparse is fine).
2. Write `loops.md`.
3. Create `memory/` with `MEMORY.md` (from `templates/MEMORY.md`) and one starter file: `user_profile.md` (type: user) holding their identity answers.

### 6. Close the loop

Tell them exactly one thing: "You're operational. Tomorrow morning, open this folder and type `/start` — that's the whole habit." Nothing else. Do not explain the other skills now; they'll meet /wrap at the end of their first session and /stuck the first time something jams.

## If the user is NOT on Claude Code

This skill can't run as a skill — but the same interview works as a pasted prompt. Point them to `GETTING-STARTED.md`, which contains the copy-paste version of every stage above.
