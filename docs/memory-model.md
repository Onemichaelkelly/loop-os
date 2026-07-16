# The Memory Model

Loop OS memory is a folder of small markdown files plus one index. No database, no embeddings — just files an AI reads on demand and a human can audit in a text editor.

## Structure

```
memory/
├── MEMORY.md              # the index — loaded every session
├── user_profile.md        # example: who I am
├── feedback_communication.md
├── project_current_launch.md
└── reference_where_things_live.md
```

## The index — MEMORY.md

One line per memory file, under 150 characters, written as a hook: enough for the AI to decide whether the file is relevant to the current conversation. The index is loaded at session start; individual files are pulled only when relevant. This keeps context cheap and recall targeted.

```markdown
- [My Profile](user_profile.md) — role, working style, what shuts me down, what gets me moving
- [Communication Rules](feedback_communication.md) — corrections I've given: no walls of text, one question at a time
```

## Each memory file

Frontmatter declares what it is; the body is the fact.

```markdown
---
name: communication-rules
description: Corrections given on how to communicate — one question at a time, no guilt framing
type: feedback
---

One question per response, never bundled. Lead with the most important thing.
Never use "should have" framing — it shuts things down rather than motivating.
**Why:** walls of text and stacked questions cause freeze, not action.
**How to apply:** cap every response at one question; lead with wins.
```

## The four types — and why they matter

| Type | What it holds | How it ages |
|---|---|---|
| **user** | Durable truths about the person | Stable — review rarely |
| **feedback** | Corrections on how to work together | Permanent — the most valuable type; never lose these |
| **project** | Current-state facts about ongoing work | Expires — needs a recheck date and periodic staleness review |
| **reference** | Pointers: where things live, URLs, tools | Verify before use — the target may have moved |

The whole point of typing: an identity fact ("plain language, always") and a project fact ("the launch is mid-March") age at completely different rates. Untyped memory eventually mixes timeless truths with expired state and can't tell them apart — which is how an AI ends up confidently wrong about your life.

## Rules of the road

1. **Update before create.** Read the relevant existing file and amend it. Only create a new file when nothing fits the topic.
2. **New file = new index line.** A memory that isn't in the index doesn't exist.
3. **Delete what turns out to be wrong.** Wrong memory is worse than no memory.
4. **Don't save what's already recorded elsewhere** — code, git history, the project docs. Memory is for what only the conversation knows.
5. **Writing memory is approval-gated.** The AI proposes the save; the human confirms. Reading is automated.
6. **Periodic audit.** Every so often (weekly, or every N sessions), review: stale project facts, contradictions between files, index lines pointing at nothing. Fix or delete.
