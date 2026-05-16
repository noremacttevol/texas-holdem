---
description: Generate a personal weekly review from recent wiki activity and log entries. Use every Sunday or when the user asks for a weekly review, recap, or summary of what was captured and learned.
disable-model-invocation: true
allowed-tools: Read Bash Write
---

## Today
!`date +"%Y-%m-%d"`

## Recent log entries (last 14 days)
!`tail -30 ~/notes/_log.md 2>/dev/null || echo "(no log entries yet)"`

## Wiki index
!`cat ~/notes/_index.md 2>/dev/null || echo "(no index)"`

## Instructions

Generate a weekly review covering this past week. Structure:

```markdown
# Weekly Review — <week ending date>

## What I captured
<bullet list of main topics added to the wiki this week, from the log>

## What I learned
<2-4 key insights or concepts that appeared in new or updated wiki pages this week — read the relevant pages to extract these>

## Open tasks
<any unchecked - [ ] items from ~/notes/projects/tasks.md for this week>

## Patterns I noticed
<anything that appeared in multiple captures or connects across topics>

## Next week — focus
<1-3 things worth going deeper on based on what was captured>
```

After generating, ask: "Want me to save this to `~/notes/daily/<date>-weekly-review.md`?"
