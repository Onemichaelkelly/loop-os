# Getting Started — the system builds itself

You don't fill out these files by hand. You run a short series of prompts, answer questions one at a time, and the AI builds your system with you. Fifteen minutes, six stages, and stage 4 is you already using it.

**Two paths to the same place:**

- **Claude Code** (recommended): clone this repo, open the folder in Claude Code, type `/setup`, answer the questions. The setup skill runs stages 1–3 for you and you can skip straight to stage 4 below.
- **Any AI chat** (Claude.ai, etc.): create a Project, upload `CLAUDE.md`, `templates/loops.md`, `templates/MEMORY.md`, and `docs/mechanics.md` to it, then run the stages below in order by copy-pasting each prompt.

Do the stages **in order** — each one produces a file the next one needs. Don't do more than one stage per sitting if that's what it takes. A half-built system that you actually finish beats a whole one abandoned at stage 2.

---

## Stage 1 — Build your operating file

*Produces: your filled-in CLAUDE.md. This is the AI's job description — who you are, how it should work with you.*

Paste this:

```
Read the CLAUDE.md template I've given you. It has bracketed placeholders.
We're going to fill it in together — interview me ONE question at a time,
never a list of questions. Cover, in this order:

1. What to call me and what I do
2. What I'm building or working toward right now (the 1-2 things that matter)
3. What stalling looks like for me and what actually helps me move
   (skip if I don't know — this section fills in over time)
4. How I want you to communicate with me (length, tone, pet peeves)
5. My hard rules — what you must never do without asking, and never do at all

Use my actual words in the file. Don't invent anything I didn't say.
When we're done, show me the complete filled-in CLAUDE.md for approval,
then give it to me as one clean copy-paste block.
```

Save the result as `CLAUDE.md`, replacing the template. **Checkpoint: no `[brackets]` left in the file.**

---

## Stage 2 — Seed your loops file

*Produces: your loops.md — the one file the whole system reads and writes.*

Paste this:

```
Now we build my loops.md from the template. I'm going to brain-dump
everything on my plate — every task, promise, worry, and "I should really..."
One line each, no order, messy is fine. Don't interrupt, don't organize
until I say "done."

When I say done:
1. Propose THE 3 for my next working day: one 🎯 needle-mover + two
   supporters. Tell me why you picked them. Let me swap any of them.
2. Anything someone ELSE owes me → the Waiting For section, with a
   sensible follow-up-by date.
3. Everything else → Backlog, verbatim, with a · c0 counter.
4. Set Last session to: "Wins: set the system up · Standing: fresh start ·
   Next: run my first morning start."

Then give me the complete loops.md as one clean copy-paste block.
```

Save it as `loops.md` next to CLAUDE.md. **Checkpoint: THE 3 has exactly three items and you agree with them.**

---

## Stage 3 — Start your memory

*Produces: a memory/ folder the system uses to stop re-asking who you are.*

Paste this:

```
Create my starter memory from the MEMORY.md template:
1. A user_profile.md file (type: user) holding what you learned about me
   in the interview — identity, working style, communication rules.
   Frontmatter: name, description, type.
2. The MEMORY.md index with one line pointing at it.
Give me both as copy-paste blocks and tell me the folder structure to save
them in.
```

Save into `memory/`. **Checkpoint: two files exist and the index line describes you accurately.**

---

## Stage 4 — Your first morning (this is the system working)

*From here on, you're not setting up — you're using it.*

Next working morning, paste this (Claude Code users: just type `/start`):

```
Run my morning start. Read my loops.md:
1. Read the Last session block first — that's where we left off.
2. Deliver THE 3: one 🎯 + two supporters, first physical action for each,
   one line each. Do NOT show me the backlog or anything beyond the 3.
3. Flag any Waiting For item past its follow-up date — gently, first thing.
4. End with exactly one question: "What do you want to work on?"
```

**Checkpoint: you got three items and one question, not a wall.** If you got a wall, say "too much — just THE 3" and it will learn.

---

## Stage 5 — Your first close (what makes tomorrow work)

At the end of that first working session, paste this (Claude Code: `/wrap`):

```
Wrap this session. In order:
1. WINS FIRST — what actually got done, as evidence, no "but you still need to."
2. Sweep our whole conversation for anything I committed to in passing
   and never captured. List what you caught.
3. Bump every open loop's counter by 1 (c0→c1...). Anything at c3: make me
   decide — do / shrink / park / kill — one item at a time.
4. Rewrite my loops.md Last session block: Wins / Standing / Next (the ONE
   thing to pick up next time).
Give me the updated loops.md as one clean copy-paste block.
```

**Checkpoint: the Last session block names ONE thing for next time.** That line is what makes tomorrow's start instant.

---

## Stage 6 — Make it stick

You're operational. The whole habit is now two moments: **start when you sit down, wrap when you stand up.** Run just that loop for a week before adding anything.

Then add pieces only when a specific pain shows up:

| The first time... | Add... |
|---|---|
| something won't move and you keep bouncing off it | the **/stuck** prompt (`skills/stuck/SKILL.md` — Do / Shrink / Park / Kill) |
| you want a midday nudge on your 🎯 | the **/checkin** prompt (`skills/checkin/SKILL.md` — one question, one loop) |
| you come back after days away and dread the pile | the **no-guilt reentry** prompt (`docs/mechanics.md`, mechanic #10) |
| you notice the same week drifting with no anchor | the **weekly needle** prompt (`docs/mechanics.md`, mechanic #9) |

One rule above all, borrowed from hard experience: when the system stops fitting, **shrink it — don't abandon it.** A start-and-wrap-only week is still the system working.
