---
name: reference_machine_paths
description: Dev works from two machines with different paths; check ~/.machine-tag before acting on any remembered path
metadata:
  type: reference
---

Two machines, different layouts:

- **laptop** (tag `L`): work files at `/Users/dev/sidecar`
- **shop mac mini** (tag `S`): work files at `/Users/sidecar/work`

`~/.machine-tag` holds one letter. Read it before using any path from memory.

**Why:** a script with the laptop path hardcoded ran on the mini and silently
created an empty `/Users/dev/sidecar` folder. Two weeks of notes went into a
directory nobody opened.

**How to apply:** never assume a path. Check the tag, and if the target folder does
not exist, stop and say so rather than creating it.
