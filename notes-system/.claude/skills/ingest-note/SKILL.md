---
description: Ingest a source file or article into the wiki. Reads the file, summarizes it, updates relevant wiki pages, and logs the ingest. Use when the user drops a new article, PDF text, or source into raw-sources/ and wants it processed. Trigger phrases: "ingest", "process this source", "add this to the wiki".
argument-hint: [filename in ~/notes/sources/ or full path]
disable-model-invocation: true
allowed-tools: Read Write Edit Bash
---

## Current date
!`date +"%Y-%m-%d"`

## Instructions

Process the source file: $ARGUMENTS

1. **Read the source** fully (check `~/notes/sources/` first if no path given)
2. **Identify** 3-8 key concepts, people, projects, or topics it covers
3. **For each concept**: check if a wiki page exists in `~/notes/wiki/`. If yes, update it. If no, create it using the template:

```markdown
---
tags: []
created: <today>
updated: <today>
source: $ARGUMENTS
---

# <Concept Name>

<2-3 sentence summary>

## Key points

- 

## Related
- [[<related-page>]]
```

4. **Update `~/notes/_index.md`** — add any new pages with one-line descriptions under the right category
5. **Append to `~/notes/_log.md`**:
   ```
   [<today>] ingested: $ARGUMENTS — <one-line description of what was processed>
   ```
6. **Do not modify** the source file in `~/notes/sources/`

Report: how many wiki pages were created or updated, and which ones.
