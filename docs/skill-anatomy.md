# How a skill works, and why yours will not fire

A skill is a folder in `~/.claude/skills/<name>/` containing `SKILL.md`. The file
opens with YAML frontmatter:

```markdown
---
name: start
description: Morning briefing. Picks the day's three, surfaces what went quiet...
---

Everything below the frontmatter is the instructions, loaded only when the skill fires.
```

## The description is the whole game

Only the `name` and `description` sit in context all the time. The body is not read
until the skill triggers. So the description is not a summary for humans. It is the
matching surface.

**Fires reliably:**

> Morning briefing. Use for `/start`, "what should I work on", "catch me up",
> "what's open", or the first message of the day. Picks three items, surfaces
> overdue follow-ups.

**Almost never fires:**

> Helps you start your day.

The difference is trigger phrases. Write down the words you would actually type,
including the sloppy ones, including the slash command.

## Three failure modes

**It never fires.** The description is abstract. Add the literal phrases you use.

**It fires constantly.** The description is too broad, usually a generic verb like
"help" or "manage." Narrow it, and say what it is *not* for: "NOT for closing the
day, use `/wrap`."

**Two skills fight.** Both match. Give each a scope line naming the other, the way
`/wrap` and `/start` point at each other below.

## Keep the body short

A skill that is three pages long gets skimmed by the model the same way it gets
skimmed by a person. Procedures, not essays. If it needs long reference material,
put that in a second file next to `SKILL.md` and tell the skill to read it when it
actually needs it.

## Test it cold

Open a new session and type the sloppiest version of the request you would
realistically type. Not the phrase you just wrote into the description. If it does
not fire on the sloppy version, the description is wrong, not you.
