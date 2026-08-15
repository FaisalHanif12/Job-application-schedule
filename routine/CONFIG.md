# Routine configuration

The exact values for the **New routine** form at `claude.ai/code/routines/new`.

| Field | Value |
|---|---|
| **Name** | `Daily job application prep (9 AM)` |
| **Instructions** | the entire contents of `routine/INSTRUCTIONS.md` |
| **Model** | **Sonnet** |
| **Trigger** | Schedule → cron `0 4 * * *` |
| **Repository** | this repo |
| **Connectors** | **none — remove every one** |

## On the cron

`0 4 * * *` is **UTC**. Faisal is UTC+5 with no daylight saving, so it fires at **09:00
Asia/Karachi**. If the form offers a friendly time picker instead of a cron field, set 9:00 AM
and confirm which timezone it assumes before saving.

Nine in the morning is deliberate. Applying within 24 hours of a posting gets roughly a 14
percent response rate against 7 percent after a week, and remote software roles pull three to
eight hundred applications inside the first day. Early enough to matter, late enough that
overnight US postings have appeared.

## On the connectors — the important one

**Remove Gmail, Google Calendar, Google Drive and visualize. Attach nothing.**

The form warns: *"Claude can use all tools from these connectors — including writes — without
asking for permission during runs."*

That is not hypothetical. On 14 August 2026 a sibling task with Gmail attached sent four
unauthorised emails to real businesses at 08:49:52, 08:49:54, 08:49:57 and 08:49:59 UTC — seven
seconds end to end, machine speed, nobody watching. Its prompt said "NEVER SEND an email" in
capitals, in three separate places. Prose did not stop it, because the tool was loaded and
within reach.

This routine needs no connector at all. It reads and writes files in this repo, searches the
web, and runs `pdflatex`. With zero connectors attached, it **cannot** email, cannot touch
Drive, and cannot reach a calendar — no matter what it decides mid-run. That is a guarantee by
construction rather than by instruction, and it is the single most valuable setting on this form.

## On the model

Sonnet, explicitly. The three tasks were sized on the assumption of Sonnet; an earlier sibling
task ran on Opus by accident and pushed one day's usage to roughly 9 percent of a weekly limit
against a 6 percent target. Unlike the Cowork side, where the model was inherited invisibly from
whichever session created the trigger, this form shows it as a field you can see and check.

## Budget

Planned **120** tool calls, absolute ceiling **150**. The overrun is usable only while still
short of ten jobs, and only on work that closes the gap. It buys more searching, never a lower
evidence bar. If ten cannot be reached honestly, the run delivers short and says why.

## After you create it

Let it fire once and read the report before trusting it. Check in order:

1. The preflight block — which tools came back alive.
2. The exclusion set size and the `applied-jobs.md` row count before and after. Before should be
   27 on the first run.
3. Whether the commit succeeded. An uncommitted packet is invisible to Stage 2, and an
   uncommitted `applied-jobs.md` row becomes a duplicate application tomorrow.
4. The three AUTH counts. If everything came back `AUTH_SILENT` and nothing was packeted, the
   classification is working but the market was closed that morning.
