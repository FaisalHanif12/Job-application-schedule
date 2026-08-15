# Resume library index

Every CV this pipeline has tailored. **The Routine checks this file before tailoring anything**,
because re-tailoring a CV that already exists is the most expensive kind of wasted work in the run.

## How the Routine uses it

Three rules, in order, first match wins:

1. **REUSED** — a row's `job_url` matches the posting being prepared. That CV was built for this
   exact role, so it is reused verbatim. Happens when a job was prepared but never submitted and
   is still live.
2. **DERIVED** — a row shares the job's `archetype` and at least three named technologies from
   the job description. That file becomes the starting point instead of the master, and only the
   summary block changes.
3. **FRESH** — nothing close enough. Tailor from `cv/cv-master.tex`.

Reuse never means sending a generic CV. If a candidate names a different company in its summary
or leads on a stack this job does not ask for, it is not close enough and the Routine falls
through to the next rule. A recycled CV that reads as recycled is worse than no application.

## Archetypes

`frontend` · `backend` · `fullstack` · `mobile` · `ai-integration` · `cloud-infra` · `generalist`

Exactly one per job.

## Columns

`origin` is one of `REUSED`, `DERIVED`, `FRESH`. `derived_from` is the file it started from, or
`-` when origin is `FRESH`. A reused CV gets an index row pointing at the existing file, not a
second copy of it, so the reuse is visible in the history.

## The list

| company_domain | company | role_title | archetype | resume_file | job_url | origin | derived_from | date |
|---|---|---|---|---|---|---|---|---|
| vanta.com | Vanta | Sr. Backend Software Engineer, Integrations Platform | backend | resumes/vanta-backend-integrations-platform-engineer.tex | https://jobs.ashbyhq.com/vanta/e76ea2d6-a514-458c-87fd-0792e50ae6bf | FRESH | - | 2026-08-15 |
| vanta.com | Vanta | Sr. Fullstack Software Engineer, Integrations Platform | fullstack | resumes/vanta-fullstack-integrations-platform-engineer.tex | https://jobs.ashbyhq.com/vanta/539cb2a8-b704-4f39-af0d-2bee5b529d1d | DERIVED | resumes/vanta-backend-integrations-platform-engineer.tex | 2026-08-15 |
| auditdata.com | Auditdata | Full-Stack Software Engineer (React Native/React/.Net) | mobile | resumes/auditdata-fullstack-react-native-engineer.tex | https://himalayas.app/companies/auditdata/jobs/full-stack-software-engineer-react-native-react-net | FRESH | - | 2026-08-15 |

<!-- The library starts empty. The first run tailors everything FRESH and fills this in.
     From the second run onward, expect a growing share of DERIVED as archetypes accumulate.
     If a run reports 10 FRESH and 0 DERIVED after the library has 20+ entries, the matching
     rule is not firing and is worth checking. -->
