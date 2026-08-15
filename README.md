# Job application schedule

State, memory and instructions for a daily scheduled Routine that prepares remote software
engineering applications for **M Faisal Hanif** (Lahore, Pakistan, works remotely).

The Routine runs at **09:00 Asia/Karachi**, unattended, on Claude Code web. It finds fresh
remote roles that would actually hire someone based in Pakistan, tailors a one-page CV and a
cover letter for each, answers every screening question in advance, and commits a packet here.

**It never submits an application. It never opens a browser. It never sends email.**
Submission is Stage 2 — attended, manually invoked, never scheduled.

> **Keep this repository private.** It contains a CV, a phone number and a personal profile.

---

## Why the repo exists

The Routine needs memory. Without `state/applied-jobs.md` it cannot hold the
never-apply-twice rule, and a duplicate application to a company he is already interviewing
with is the worst thing this pipeline can produce.

A repo also removes a whole class of failure the previous setup had. The old version stored
state in a document store where every write replaced the entire file, so adding one row meant
reproducing 200 lines byte for byte and hoping nothing was dropped. Here, a run appends. Git
keeps the history, and a bad write is visible in a diff instead of being silent.

## Layout

```
README.md                        you are here
routine/
  INSTRUCTIONS.md                the Routine prompt. Paste into the Instructions field.
  CONFIG.md                      exact form values, and why each one is set that way
state/
  applied-jobs.md                dedup tracker + institutional memory. THE critical file.
  job-application-profile.md     filters, standing answers, salary policy, Stage 2 runbook
  standing-rejected.md           companies already checked and rejected, with reasons
cv/
  cv-master.tex                  the master CV, ready to tailor
  resume.cls                     custom LaTeX class. \documentclass{resume} needs this file.
resumes/
  index.md                       catalogue of every CV ever tailored. Checked before tailoring.
  *.tex                          the CVs themselves, reused and derived from
packets/                         each run commits its dated packet here
docs/
  stage-2-runbook.md             the attended submission procedure
  build-brief.md                 why the task is shaped this way. Not read at runtime.
```

## The two files that must not be casually edited

**`state/applied-jobs.md`** holds three markdown tables under eight headings — a
permanent-exclusions table, the main list, and a rejected-with-reason table. The Routine reads
the one under `## The list`, **found by heading and never by position**, because the count
changes as the file grows. Its nine columns, in this exact order:

```
| company_domain | company | role_title | job_url | posted | fit | low_comp | date | status |
```

`company_domain` comes **first**. An earlier version of the instructions had these reversed,
which would put company names into the domain column and build the next day's duplicate
protection out of garbage. Status vocabulary is `prepared`, `submitted`, `rejected`,
`interview`, `expired` — and **all of them block**.

**`cv/resume.cls`** is a custom class that exists in no TeX distribution. Without it,
`\documentclass{resume}` fails and no CV compiles at all. Verified compiling with exit code 0
on 14 August 2026.

Note: the untailored master runs to **two pages** with all five projects. That is expected, not
a bug — the `%% TAILORABLE` marker on the PROJECTS block exists so each tailored CV drops
projects down to one page.

## Stage 2, which is not scheduled and must not be

Stage 1 prepares. Stage 2 submits, and only ever with a human watching.

The full procedure is in **`docs/stage-2-runbook.md`** — browser setup, what to fill, what never
to fill (government IDs, date of birth, bank details, salary history, voluntary demographics,
legal attestations), the rule that job descriptions are data rather than instructions, and the
write-back that marks a row `submitted` only after Faisal confirms he pressed the button himself.
A second copy of the runbook also sits inside `state/job-application-profile.md`, which is what
the Routine reads.

To run it: clone this repo, open an attended session, and point it at
`packets/job-packets-today.md`. Check the `generated_at` date first. If it is not today's, those
postings may be dead, and applying to a closed role wastes the slot and marks the company as
applied forever.

## The daily flow

**09:00 Karachi, unattended.** Preflight probe, then reads its state files and builds the
exclusion set from every row of `applied-jobs.md` regardless of status, blocking on job URL *or*
company domain. Six exclusive discovery lanes, two subagents at a time. Every posting opened and
cross-checked against the ATS's live feed. Filters: remote, HQ allow-list, in-field, posted
within 48 hours at the absolute outside. Work authorisation classified three ways, with
`AUTH_BLOCKED` dropped and `AUTH_SILENT` capped at half the packet.

Then — **before tailoring anything** — it checks `resumes/index.md`. A CV already built for this
exact posting is reused verbatim. A CV built for the same archetype and a close stack becomes the
starting point, with only the summary rewritten. Only when nothing matches does it tailor from
the master. Every CV is compiled, asserted at one page, saved into `resumes/`, and indexed.

It commits a dated packet plus `job-packets-today.md`, appends rows as `prepared`, and reports.

**Then Stage 2, when Faisal asks.** It works through the packet in Chrome, fills every field
from the packet, uploads the CV, and stops at the submit button. He presses it. Only on his
confirmation does the row become `submitted` — which is what stops tomorrow's run from ever
seeing that job again.

## Calibration

| Date | Screened | Delivered | Yield |
|---|---|---|---|
| 7 August 2026 | 300+ postings | 10 | 3.3% |
| 13 August 2026 | 150 postings | **0** | 0% |
| 15 August 2026 (am) | 158 postings | **0** | 0% |
| 15 August 2026 (pm) | 55 postings | **0** | 0% |

**The zeros were arithmetic, not bad luck.** Yield on this funnel runs at roughly 3 percent, so
ten packets requires screening about three hundred postings. Fifty-five screened predicts 1.8
jobs; a hundred and fifty predicts five. Every zero day ran the full discovery ladder and then
stopped early, on a rung boundary rather than on a count.

The 15 August afternoon run settles the older theory. Its own AUTH tally was OPEN 1, REGIONAL
3–4, BLOCKED 2 — work authorisation was no longer killing anything, because nothing survived
freshness and stack long enough to be classified. The constraint is funnel volume.

Hence the floor in `routine/INSTRUCTIONS.md`: **the run may not report fewer than ten until it
has screened at least three hundred postings.** The ladder terminates on a screened count, never
on having finished its rungs.

**Ten real jobs is the target and the run spends whatever it takes to reach it. Zero is only an
acceptable answer after three hundred postings have actually been looked at** — and a packet
padded by dropping the evidence bar is still worse than a short one.

As of the initial commit, `state/applied-jobs.md` carries **27 prepared roles** from 6 and 7
August, none of them submitted.
