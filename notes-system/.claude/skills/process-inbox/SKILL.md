---
description: Process everything in inbox.md into the wiki. Reads each captured item, files it into the right wiki page (or creates one), then clears the inbox. Use after capturing notes on the phone or adding quick thoughts. Trigger phrases: "process inbox", "file my captures", "clear inbox".
disable-model-invocation: true
allowed-tools: Read Write Edit Bash
---

## Current date
!`date +"%Y-%m-%d"`

## Inbox contents
!`cat ~/notes/_inbox/inbox.md 2>/dev/null || echo "(inbox is empty)"`

## Instructions

Work through every item in the inbox above:

1. For each item, decide: does it belong in an existing wiki page, or does it need a new one?
2. **Add to existing page**: find the most relevant `~/notes/wiki/*.md` file and append the item
3. **Create new page** if no existing page fits — use standard frontmatter with today's date
4. For items that are **tasks** (`- [ ]`), add them to `~/notes/projects/tasks.md` under today's date section (create file if it doesn't exist)
5. For items that are **ideas**, add to `~/notes/wiki/ideas.md`
6. After processing all items, **clear the inbox** — overwrite `~/notes/_inbox/inbox.md` with just the header:
   ```
   # Inbox
   
   > Quick captures. Run `/process-inbox` when ready to file these into the wiki.
   ```
7. **Append to `~/notes/_log.md`**:
   ```
   [<today>] processed inbox — <N> items filed into wiki
   ```

Report: what was captured and where each item was filed.
