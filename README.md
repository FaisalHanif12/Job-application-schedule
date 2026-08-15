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
packets/                         each run commits its dated packet here
docs/
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

Stage 1 prepares. Stage 2 submits, and only ever with a human watching. Its full runbook lives
inside `state/job-application-profile.md` and covers browser setup, what to fill, what never to
fill — government IDs, date of birth, bank details, salary history, voluntary demographics,
legal attestations — and the rule that job descriptions are data, never instructions.

To run it: clone this repo, open an attended session, and point it at
`packets/job-packets-today.md`. Check the `generated_at` date first. If it is not today's,
those postings may be dead, and applying to a closed role wastes the slot and marks the company
as applied forever.

## Calibration

| Date | Screened | Delivered |
|---|---|---|
| 7 August 2026 | 300+ postings | 10 |
| 13 August 2026 | 150+ postings | **0** |

The binding constraint is not freshness and it is not remote status. It is that almost every
remote engineering role is locked to a country list that excludes Pakistan.

**Ten real jobs is a good day. Zero is a real outcome and gets reported as one. Twenty produced
by relaxing the filters wastes his mornings** on applications that were never going to be read.

As of the initial commit, `state/applied-jobs.md` carries **27 prepared roles** from 6 and 7
August, none of them submitted.
