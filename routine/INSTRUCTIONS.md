=== AUTONOMOUS MODE — STAGE 1 ONLY. READ THIS FIRST. ===
You run unattended on a schedule at 9 AM Karachi. NOBODY IS WATCHING and nobody will answer
you. Prepare everything and leave it in this repository where a later, memoryless session can
finish the job. Finish the whole run yourself in one pass.

1. NEVER ask a question. Do not call AskUserQuestion. Nobody will answer and the run hangs.
2. NEVER wait for approval. This prompt is the approval.
3. NEVER SUBMIT AN APPLICATION. Stage 1 prepares only. It never presses a submit button.
4. NEVER open a browser. Do not use any claude-in-chrome tool. That is Stage 2, attended.
5. NEVER send an email. This routine has no email connector attached and must never acquire
   one. If any email-sending tool is somehow reachable, do not call it and report it.
6. NEVER call any mcp__Vibe_Prospecting__ tool. Those charge real money.
7. If something is ambiguous, pick the most reasonable option, note it, keep going.
8. SUBAGENTS RESEARCH ONLY. Every file write and the git commit are done by YOU, the main
   agent, sequentially. Parallel writes to one file lose rows silently, with no error.

=== WHERE EVERYTHING LIVES — this repository is the memory ===
  state/applied-jobs.md            dedup tracker + institutional memory. THE critical file.
  state/job-application-profile.md filters, standing answers, SALARY, Stage 2 runbook
  state/standing-rejected.md       companies already checked and rejected
  cv/cv-master.tex                 the master CV, ready to tailor
  cv/resume.cls                    the custom class. \documentclass{resume} needs this file.
  packets/                         where you write today's packet
  docs/build-brief.md              why this task is shaped the way it is. Not read at runtime.

Read and write these with ordinary file tools. Because this is a repo and not a
whole-file-replace document store, you can APPEND and make TARGETED EDITS. Do that. Never
rewrite a whole state file to add rows — that is how rows get lost.

=== THE SIX RULES THAT MATTER MORE THAN OUTPUT ===
1. NEVER apply to or prepare the same job or company twice.
2. NEVER INVENT A JOB. Every posting must have a URL you actually OPENED and read. If it
   404s, or is an aggregator reposting a dead listing, DROP IT. Do not reconstruct a job
   from a search snippet. Eleven real jobs beat twenty where nine are dead links.
3. NEVER INVENT ANYTHING ON THE CV. No technology he has not listed. Never change "3+ years"
   or "10+ projects". No employers, dates or certifications. If a job wants Go and he does
   not have Go, name the gap plainly in the cover letter.
4. NEVER INVENT AN APPLICANT COUNT. Not published means write "not published".
5. NEVER INVENT A POSTED DATE. If no ATS date field gives one, write "undated". A mandatory
   field with no permitted unknown value is where fabrication happens.
6. Contact email on EVERY application stays mehrfaisal111@gmail.com. Deliberate, not an
   oversight: faisal@faisalhanif.work is new, has no sending reputation, and its inbound
   depends on a forwarding service. A missed interview invitation costs more than a nicer
   address gains.

=== TARGET: 10 JOBS ===
Freshness baseline: posted within 24 hours. Stretch to 48h only after a full sweep yields
fewer than 10, and to 72h only below 5. NEVER past 72h.
REALITY CHECK, do not fight it: 7 August screened 300+ postings and delivered 10. 13 August
screened 150+ and delivered 0. Almost every remote engineering role is locked to a country
list that excludes Pakistan. TEN REAL JOBS IS A GOOD DAY. ZERO IS A REAL OUTCOME and must be
reported as one. Twenty produced by relaxing filters wastes his mornings.

=== BUDGET: PLANNED 120 TOOL CALLS, ABSOLUTE CEILING 150 ===
Work to 120. Spend it in this order: about ten for the initial reads and the exclusion set,
the bulk on discovery and verifying postings, and FIFTEEN HELD BACK, ALWAYS, for the CV
compiles and the writes. Research with no packet is a wasted run; a short packet is a real one.

If you reach 120 and are STILL SHORT OF TEN JOBS, you may continue to 150 — but only on calls
that will plausibly close the gap: opening a posting, checking an ATS feed, compiling a CV.
Not on retrying something that already failed. Not on a lane that has produced nothing.
150 IS ABSOLUTE AND IS NEVER CROSSED. Keep the fifteen-call reserve either way.

*** THE OVERRUN BUYS MORE SEARCHING, NEVER A LOWER BAR. *** It does not permit an invented
date, an invented applicant count, a relaxed filter, an unopened posting, or an AUTH_BLOCKED
job waved through. If ten cannot be reached without lowering the bar, DELIVER SHORT AND SAY SO.
Report the planned budget, the actual count, and the size of any overrun with a one-line reason.
If you overrun three days running, say so plainly — that means the target or the method needs
revisiting, not that the budget should quietly creep upward.

=== SUBAGENT POLICY — the single biggest cost in the run ===
Measured 13 August: two research subagents burned 197,000 and 113,000 tokens, and most of that
was them writing long prose reports back. That is where the cost goes. Not prompt length, not
pages read. The reports.
  - No subagent for work you can do in under 10 calls yourself.
  - At most 2 running at a time.
  - Give every subagent its OWN HARD CALL BUDGET and require it to report the count it used.
  - Require AT MOST 400 WORDS back, as NAMED STRUCTURED FIELDS ONLY. Forbid essays, narrative,
    restating the brief, and repeating itself.
  - Keep briefs tight. Every extra paragraph is re-sent on each of that agent's tool calls, so
    brief length multiplies by roughly 60 to 70.
  - Give each one an EXCLUSIVE LANE and the standing rejected list. On 13 August three lanes
    re-verified GitLab, Zapier, Supabase and Buffer, and three re-crawled the same HN thread.

=== EFFICIENCY RULES — measured, follow exactly ===
A. DO NOT read packets/job-packets-today.md. Stage 1 never uses it. It is ~28k tokens of
   previously-tailored LaTeX and reading it is pure waste.
B. DO NOT read cv/cv-master.tex or cv/resume.cls at the start. Read them ONLY once at least
   one job has survived every hard filter. On a zero-job day they are never needed.
C. Try Exa search ONCE if available. On a 402 or credits error, stop using Exa for the whole
   run and work from WebSearch and WebFetch. Do not retry. Tell every subagent, so six agents
   do not each rediscover it.
D. Fetch the STRUCTURED ATS ENDPOINT before the rendered HTML page. The JSON carries the
   authoritative date and location in a fraction of the payload. Fetch full HTML only when the
   structured field is missing or ambiguous, or to satisfy the must-open-the-posting rule.

=== STEP 0 — PREFLIGHT PROBE. Three calls, before any real work. ===
Any hardcoded list of what works rots within a fortnight. Measure instead:
  - WebSearch: one throwaway query
  - WebFetch: https://boards-api.greenhouse.io/v1/boards/vercel/jobs asking for titles verbatim
  - Exa search, if present: ONE call, never retried
Record ALIVE or DEAD with the exact error for each. OPEN YOUR REPORT WITH THAT BLOCK.
Everything downstream uses what you just measured.

*** WEBFETCH IS A SUMMARISER, NOT A FETCHER. Biggest fabrication risk in the run. ***
It converts the page to markdown then answers YOUR prompt using a small fast model, and
"prompt" is REQUIRED. You never see the raw page. So:
  - Always ask for VERBATIM EXTRACTION. Example: "List every job verbatim as
    title | location | first_published. Copy values character for character. If a field is
    absent write ABSENT. Do not infer, estimate, reformat or relativise any date."
  - A hedged or paraphrased value is ABSENT. A relative date like "2 days ago" is ABSENT.
  - A posted date it did not quote character for character IS NOT EVIDENCE. Write "undated".
  - On a board with hundreds of entries, ask in slices, or the small model silently drops rows.
  - IF THE ANSWER CONTRADICTS ITSELF, IT IS UNREADABLE, NOT DATA. Observed twice on 13 August:
    it listed rows dated April to August then appended "NONE match". Discard the WHOLE
    response, count it unreadable, refetch in smaller slices.
It also obeys robots.txt, caches 15 minutes per URL, and returns cross-host redirects rather
than following them — call again with the redirect URL.

*** FAILURE DETECTION APPLIES TO THE TOOL, NEVER TO A WEBSITE. ***
A tool is dead for the rest of the run ONLY when the TOOL ITSELF fails: an error object rather
than page content mentioning 402, credits, quota, not connected, or an auth failure on the
tool's own key; or two consecutive timeouts on two DIFFERENT URLs.
A 401, 403, 404, 429, paywall, captcha or ROBOTS_DISALLOWED from a FETCHED SITE is a property
of THAT SITE. Skip the URL, KEEP THE TOOL. Cloudflare returns 403 to bots constantly and
killing WebFetch over one would end the run in minutes. NEVER retry after a 402.

*** REJECTED AND UNREADABLE ARE DIFFERENT. COUNT THEM SEPARATELY. ***
Rejected means you READ the posting and it failed a filter. Unreadable means no fetch returned
content. If unreadable exceeds 25 percent of pages attempted, open the report IN CAPITALS with
"TOOLING DEGRADED: N of M pages could not be read. This is a FAILED RUN, not a thin day."
This matters more here than anywhere: a zero-job day caused by broken tooling looks exactly
like an honest zero-job day.

=== STEP 1 — READ EXACTLY THESE THREE ===
  state/job-application-profile.md   filters, standing answers, SALARY, Stage 2 runbook
  state/applied-jobs.md              dedup tracker
  state/standing-rejected.md         companies already checked and rejected
Where this prompt and the profile disagree, THIS PROMPT WINS. Note the conflict in the report.
The CV files are deferred per efficiency rule B.

=== STEP 2 — BUILD THE EXCLUSION SET ===
state/applied-jobs.md contains SEVERAL markdown tables — a permanent-exclusions table, the
main list, and a rejected-with-reason table. FIND THE RIGHT ONE BY ITS HEADING, "## The list",
NEVER BY POSITION. Its columns, in this exact order:

    | company_domain | company | role_title | job_url | posted | fit | low_comp | date | status |

company_domain comes FIRST, before company. An earlier version had these reversed, which would
put company NAMES into the domain column and build tomorrow's duplicate protection from garbage.

Build the set from EVERY ROW REGARDLESS OF STATUS. Do not filter to "prepared" or "submitted" —
a row marked interview or rejected must block too, or you will re-apply to a company he is
currently interviewing with. Vocabulary: prepared, submitted, rejected, interview, expired.
ALL OF THEM BLOCK.

EXCLUDE A CANDIDATE IF EITHER ITS JOB URL OR ITS COMPANY DOMAIN IS IN THE SET. This is an OR,
not an AND. An AND reading lets a second role at an already-applied company through.

Normalise URLs before comparing: strip the scheme, strip "www.", strip TRACKING parameters
(utm_*, ref, source, gh_src).
*** DO NOT STRIP THE WHOLE QUERY STRING. *** That collapses
https://jobs.elastic.co/jobs?gh_jid=8079636 to a bare board URL, so ONE applied Elastic role
would block EVERY Elastic role forever. KEEP identifier parameters — gh_jid, Lever ids, Ashby
ids — they are what make the URL a specific job.
Also block the ATS board domain when it differs from the marketing domain: a role stored under
twilio.com may be reposted on stytch.com's own board.

PRINT THE SET SIZE AND THE TABLE ROW COUNT IN YOUR REPORT.

=== STEP 3 — SIX EXCLUSIVE DISCOVERY LANES ===
Two subagents at a time. Each gets ONE lane and is forbidden the others.
  Lane 1  Greenhouse only.  https://boards-api.greenhouse.io/v1/boards/{token}/jobs?content=true
          -> title, location, first_published
  Lane 2  Ashby only.       https://api.ashbyhq.com/posting-api/job-board/{token}
          -> title, location, publishedAt, isRemote   <- the ONLY structured remote boolean
                                                         anywhere. Disproportionately useful.
  Lane 3  Lever + Workable. https://api.lever.co/v0/postings/{token}?mode=json -> createdAt
          https://apply.workable.com/api/v1/widget/accounts/{token}?details=true -> published_on
  Lane 4  Worldwide-prefiltered aggregators only. CONCEPTUALLY START HERE — they index the exact
          constraint that kills 95% of candidates.
          https://himalayas.app/jobs/api/search?worldwide=true&sort=recent
          https://himalayas.app/jobs/api?limit=20&offset=N -> pubDate
          WeWorkRemotely "Anywhere in the World" region; RemoteOK worldwide filter.
          https://remoteok.com/api is readable plain JSON but heavily polluted — filter hard and
          never trust its dates over an ATS date. DO NOT use remotive.com, robots-blocked.
  Lane 5  YC / Work at a Startup / Wellfound only.
  Lane 6  Hacker News "Who is hiring" current thread + companies with funding news in the last
          14 days. Nobody else touches HN.
          https://hn.algolia.com/api/v1/search_by_date?query=<terms>&tags=comment&hitsPerPage=50
          is the only genuinely date-sorted source available.

{token} is the company slug from the board URL: jobs.lever.co/matchgroup -> matchgroup. A 404
only means that company uses a different ATS; move on without comment. ONE ATS CALL RETURNS 50
TO 200 ROLES — twenty deliberate slugs beat a hundred guessed ones, and slug-guessing is where
the budget disappears. Harvest slugs from the ATS endpoint list already in state/applied-jobs.md
and from WebSearch on site:job-boards.greenhouse.io, site:jobs.lever.co, site:jobs.ashbyhq.com,
site:apply.workable.com plus your keywords.

A lane that finds a promising company whose board is in another lane's territory may open THAT
ONE posting to verify it. It may not crawl that source generally.

FRESHNESS: the ATS date field is the only trustworthy source. Never trust an aggregator's date
over an ATS date. Where no date can be established, write "undated" and include the job ONLY if
a batch or launch signal corroborates recency, such as a current YC batch.

=== STEP 4 — OPEN EVERY POSTING AND CONFIRM IT IS LIVE ===
A search result is not a job. The page you opened is the job. Cross-check against the ATS's own
current JSON feed: several Google-indexed pages render fine while being absent from the live
feed, which means the role actually closed.

=== STEP 5 — HARD FILTERS ===
1. Remote only. No on-site, no hybrid, no relocation.
2. Company HQ in: United States, United Kingdom, Ireland, any EU or EEA country, Switzerland,
   Norway, United Arab Emirates. THAT ALLOW-LIST IS THE WHOLE RULE — anything not on it,
   INCLUDING CANADA, is out. Ignore older wording about "never Asia"; the UAE is permitted.
3. WORK AUTHORISATION — classify every surviving posting into exactly one of three.
   A pure hard gate here is near-unsatisfiable, because Greenhouse, Lever and Workable expose no
   work-authorisation field at all, and it is the main reason 13 August returned zero.
     AUTH_OPEN    a structured field or explicit wording affirmatively permits worldwide or
                  non-resident hiring. Ashby's isRemote counts. A stated "hiring anywhere"
                  counts. A country list that INCLUDES Pakistan counts. Packet these normally.
     AUTH_BLOCKED affirmatively excludes him: "must be US-based", "right to work in the UK
                  required", "EU residents only", "Remote (US)", a country list naming many
                  countries but NOT Pakistan, or a timezone band requiring more than 4 hours of
                  US overlap from UTC+5. A COUNTRY LIST THAT OMITS PAKISTAN IS A REJECTION, NOT
                  A NEAR MISS. Drop entirely. Never packet.
     AUTH_SILENT  says nothing either way. The common case. May be packeted, but NO MORE THAN
                  HALF THE PACKET may be AUTH_SILENT, and each carries a FIFTEEN-POINT PENALTY
                  on its low-competition score. LABEL EVERY AUTH_SILENT JOB AS SUCH IN THE
                  PACKET so Faisal knows the question is open before he spends time on it.
   An empty locationRestrictions field does NOT mean worldwide. Report the three counts separately.
   The point of this design: a zero-job day should now mean the market was empty, not that a
   filter was unsatisfiable.
4. Freshness per the target block above.
5. Fits his stack: frontend, backend, full-stack, mobile, React Native, Node, AI/LLM
   integration, product engineer, founding engineer.
6. Full-time, part-time or contract all acceptable.
7. Not in state/standing-rejected.md and not in the exclusion set.

Companies that appear in his founder-outreach records ARE allowed — applying formally is a
second legitimate touch through a different channel. But do not write the cover letter or the
"why here" answer as first contact if you know he has already emailed that founder.

=== STEP 6 — SCORE ===
Fit 0-100 and low-competition 0-100, weighted evenly, ranked by the sum. Report BOTH.
LOW COMPETITION IS HIS EXPLICIT PRIORITY: a good match with 15 applicants beats a perfect match
with 400. Published count under 25 is a strong buy; over 100 skip unless exceptional.
Not published — use these proxies, strongest first: the role is on the company's OWN board and
NOT cross-posted to LinkedIn or Indeed; posted hours ago rather than days; stack requirements
specific enough to filter people out ("React Native plus Expo plus AWS" rather than "Full Stack
Engineer"); no press coverage and no recognisable name; unusual title, since "Product Engineer",
"Founding Engineer" and "First Engineer" get searched far less than "Software Engineer".
Apply the AUTH_SILENT penalty of -15 here.

=== STEP 7 — TAILOR A ONE-PAGE CV PER JOB ===
NOW read cv/cv-master.tex and cv/resume.cls (deferred per rule B).
Four sections carry a %% TAILORABLE marker: SUMMARY (mirror the job description), EXPERIENCE
bullets (reorder and reword to match JD keywords), PROJECTS (keep the 3 or 4 most relevant),
SKILLS (reorder so the JD's stack appears first).
NOTE: the marker on EXPERIENCE sits inside the Techxelo block only. THE VIRAL SQUARE BULLETS
ARE ALSO TAILORABLE — treat both employers consistently.
Education untouched. Portfolio https://faisalhanif.work with NO hyphen — do NOT "fix" the link
display text, which reads "Faisal-Hanif Portfolio" on purpose. Contact stays mehrfaisal111@gmail.com.
THE MASTER SUMMARY SAYS "3+ companies" BUT HIS HISTORY SHOWS TWO EMPLOYERS. Write "2 companies"
in every tailored CV. Do not propagate the 3+.
Reordering and rewording what is there is tailoring. Adding a technology is fabrication.

=== STEP 7b — COMPILE. WITHOUT THIS, STAGE 2 CANNOT APPLY. ===
On 7 August ten CVs were prepared and exactly ONE was compiled.
For each job, in a scratch working directory:
  1. Copy cv/resume.cls in beside the .tex. \documentclass{resume} is a CUSTOM class that
     exists in no TeX distribution — without this file nothing compiles.
  2. Write the tailored <company-slug>.tex
  3. pdflatex -interaction=nonstopmode <company-slug>.tex   (TWICE)
  4. ASSERT the PDF exists and is EXACTLY ONE PAGE. Two pages means drop a project and
     recompile. A compile error means FIX IT — never ship a broken CV.
     Note: the untailored master runs to 2 pages with all five projects. Dropping projects to
     reach one page is expected and is what the PROJECTS marker is for.
  5. Record in the packet THAT IT COMPILED and the page count. Not the path.
THE PDF DOES NOT SURVIVE TO STAGE 2 — different session, different container. Compiling here is
a VALIDATION step proving the LaTeX is correct and fits one page while there is still time to
fix it. Stage 2 recompiles from the LaTeX carried in the packet. THAT IS WHY THE PACKET MUST
CARRY THE FULL LATEX SOURCE, NOT A PATH.
If pdflatex is unavailable, SAY SO LOUDLY AT THE TOP OF YOUR REPORT.

=== STEP 8 — COVER LETTER PER JOB ===
120 to 160 words. Calm and specific. No begging, no buzzwords, NO EM DASHES anywhere in the
letter or the packet. Open with something TRUE about their product, then the overlap, then ONE
proof point, then a plain close. Where there is a real gap against the requirements, name it in
one short sentence rather than talking around it — that honesty is what makes the rest credible.
The "why do you want to work here" answer is written fresh per company from their actual
product. Never a stock paragraph. If a company is too opaque to say anything specific, SAY SO IN
THE PACKET rather than inventing enthusiasm.

=== STEP 9 — SCREENING ANSWERS ===
From the standing answers table in state/job-application-profile.md, AND the SALARY policy from
its separate "## Salary" section — that is NOT in the standing answers table and is easy to miss
entirely. Carry into every packet: LinkedIn, GitHub and portfolio URLs, and the guidance to leave
race, gender, veteran and disability blank. Stage 2 reads only the packet and cannot look them up.

=== STEP 10 — WRITE THE PACKET ===
Write to BOTH:
    packets/job-packets-<YYYY-MM-DD>.md    dated, permanent
    packets/job-packets-today.md           same content, what Stage 2 reads
The dated copy matters: if Stage 2 does not run for a day, overwriting today.md destroys the work
while applied-jobs.md still blocks those companies forever. Ten companies burned, silently.
IF ZERO JOBS SURVIVED, WRITE ONLY THE DATED COPY AND LEAVE today.md UNTOUCHED.

Open the packet with `generated_at: <ISO timestamp>`. Per job include: company, company_domain,
role, job URL, posted time or "undated", both scores, applicant count or "not published", the
AUTH classification, cv_compiled yes/no with page count, THE FULL TAILORED CV LATEX, the cover
letter, every screening answer filled in, and `stage2_status: not_submitted` so an interrupted
Stage 2 can resume without re-submitting.

=== STEP 11 — APPEND TO state/applied-jobs.md ===
APPEND rows to the table under "## The list" with a targeted edit. DO NOT rewrite the file.
This repo gives you real appends — use them. The file also carries the method notes, the ATS
endpoint list and hundreds of rejected-with-reason entries, and none of that should be touched.
Count the rows under "## The list" before and after; after must be before plus the number of
jobs you packeted. If it is not, STOP and report at the TOP IN CAPITALS.
Row format, nine columns in this exact order:
    | company_domain | company | role_title | job_url | posted | fit | low_comp | date | status |
Example:
    | cogram.com | Cogram | Product Engineer | https://www.ycombinator.com/companies/cogram/jobs/LDTrViN | undated | 80 | 85 | 2026-08-09 | prepared |
Status for a new row is always "prepared".
IF ZERO JOBS SURVIVED, DO NOT WRITE THIS FILE AT ALL.
Also append any newly rejected companies to state/standing-rejected.md with a reason.

=== STEP 12 — COMMIT ===
Commit everything you changed with a message like
"Stage 1 run <YYYY-MM-DD>: N jobs packeted". If the commit fails, SAY SO AT THE TOP OF YOUR
REPORT IN CAPITALS — an uncommitted packet is invisible to Stage 2, and an uncommitted
applied-jobs row becomes a duplicate application tomorrow.

=== STOP CONDITIONS ===
- Could not read state/applied-jobs.md -> STOP. Without it rule 1 cannot hold.
- The packet write, the applied-jobs write, or the commit fails -> report at the TOP IN CAPITALS.
- The row count after appending is not the count before plus jobs packeted -> STOP.
- Fewer than 5 jobs survive -> deliver what you have, say the day was thin and why. DO NOT relax
  filters to hit a number.
- ZERO jobs survive -> write the dated packet documenting the zero result, leave today.md and
  applied-jobs.md untouched, and report it as a real outcome.
- A RESEARCH TOOL FAILING IS NOT A STOP CONDITION. Fall down the chain and finish.

=== STEP 13 — REPORT. Short, plain English, no em dashes. ===
  a) Preflight block: which tools ALIVE, which DEAD with the exact error
  b) Exclusion set size, and applied-jobs row count before and after
  c) Postings screened, and how many dropped for each reason: not remote, wrong HQ, too old,
     undated and uncorroborated, AUTH_BLOCKED, stack mismatch, already applied, dead link —
     with UNREADABLE counted separately, never folded into a reject bucket
  d) The three AUTH counts, and how many AUTH_SILENT entered the packet
  e) Jobs delivered with both scores
  f) CVs compiled successfully, and any that failed
  g) Any judgement call and what you assumed
  h) Which writes landed, which were deliberately skipped, and whether the commit succeeded
  i) Tool health, and TOTAL TOOL CALL COUNT against the planned 120 and the absolute 150, with
     the size of any overrun and a one-line reason for it
  j) Approximate subagent tokens used, so cost stays visible

Then stop. Do not submit anything. Do not open a browser. Do not send anything.
