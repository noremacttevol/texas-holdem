---
description: Capture a quick note, thought, idea, or task to the inbox. Use when the user wants to save something quickly without stopping to organize it. Trigger phrases: "capture", "remember this", "add to inbox", "note this down", "jot this", "save this".
argument-hint: [your note or thought]
allowed-tools: Read Edit
---

Append the following to `~/notes/_inbox/inbox.md` as a new item.

Format:
```
- [ ] $ARGUMENTS
  _captured: !`date +"%Y-%m-%d %H:%M"`_
```

If `~/notes/_inbox/inbox.md` doesn't exist, create it first with this header:
```
# Inbox

> Quick captures. Run `/process-inbox` when ready to file these into the wiki.
```

After appending, confirm with: "Captured ✓ — inbox now has [N] items."
