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

*** BEFORE ANYTHING ELSE: CHECK FOR AN UNMERGED PR FROM A PREVIOUS RUN. ***
This routine writes its changes as a pull request rather than committing straight to the
default branch. That is good — Faisal sees the diff before it lands — but it creates one trap.
If a previous run's PR has NOT been merged, the state files on the default branch are STALE:
they do not contain yesterday's prepared jobs. An exclusion set built from stale state means
preparing the same jobs twice, which is the single failure this whole pipeline exists to avoid.
So: look for an open PR from an earlier run of this routine. If you find one, say so at the TOP
of your report IN CAPITALS, name the PR, and build your exclusion set from the UNION of the
default branch and that PR's version of state/applied-jobs.md. Do not silently proceed on the
default branch alone.

=== WHERE EVERYTHING LIVES — this repository is the memory ===
  state/applied-jobs.md            dedup tracker + institutional memory. THE critical file.
  state/job-application-profile.md filters, standing answers, SALARY, Stage 2 runbook
  state/standing-rejected.md       companies already checked and rejected
  sources/ats-boards.md            VERIFIED live company boards with measured engineering counts.
                                   START HERE. This is where the in-field volume comes from, and
                                   it is the difference between ten jobs and a zero day.
  cv/cv-master.tex                 the master CV, ready to tailor
  cv/resume.cls                    the custom class. \documentclass{resume} needs this file.
  resumes/index.md                 catalogue of every CV ever tailored. CHECK BEFORE TAILORING.
  resumes/*.tex                    the CVs themselves, reusable
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
FRESHNESS: prefer posted within 24 hours. You may go past 24h when a full sweep has not
produced 10, but *** 48 HOURS IS THE ABSOLUTE CEILING AND IS NEVER CROSSED. *** Nothing older
than two days enters the packet, for any reason, however good the role looks. Applying within
24 hours gets roughly a 14 percent response rate against 7 percent after a week, and remote
software roles pull three to eight hundred applications inside the first day. A three-day-old
posting has already been read by hundreds of people and is not worth his morning.
*** TEN IS THE TARGET AND YOU DO NOT STOP AT THE FIRST EMPTY SWEEP. ***
Two runs in a row delivered zero after screening 150+ postings each. Faisal is paying for those
runs. A zero day that cost a full budget is the worst outcome this task can produce, so before
you may report fewer than ten you MUST work down this ladder and report which rungs you used:

  RUNG 1  All six discovery lanes at 24h freshness.
  RUNG 2  Still short — extend to 48h across every lane. 48h IS THE ABSOLUTE CEILING.
  RUNG 3  Still short — harvest 20+ NEW ATS slugs you have never queried, from WebSearch on
          site:job-boards.greenhouse.io, site:jobs.lever.co, site:jobs.ashbyhq.com,
          site:apply.workable.com plus your keywords, and run them.
  RUNG 4  Still short — sweep the bulk aggregator APIs listed under DISCOVERY, paging deeper
          than the first page. These carry hundreds of roles per call.
  RUNG 5  Still short — widen titles: include "Software Engineer II", "Senior Software
          Engineer", "Web Developer", "Application Developer", "Platform Engineer".
  RUNG 6  Still short — spend the overrun budget up to 320 calls on more slugs and deeper paging.

*** THE LADDER TERMINATES ON AN IN-FIELD SCREENED COUNT, NOT ON RUNG COMPLETION. ***
YOU MAY NOT REPORT FEWER THAN TEN UNTIL YOU HAVE SCREENED AT LEAST 300 IN-FIELD POSTINGS.

IN-FIELD means a software engineering role — developer, engineer, SRE, DevOps, data, ML, mobile,
platform, architect. *** A GENERAL POSTING YOU SKIPPED BY ITS TITLE DOES NOT COUNT. *** If a feed
hands you an Executive Assistant, a Medical Biller and a Physiotherapist, you have screened zero.
This distinction is the whole finding. Read the next paragraph before you plan the run.

*** WHERE THE ZEROS ACTUALLY CAME FROM: SOURCE DENSITY, MEASURED 15 AUGUST. ***
The general remote aggregators are roughly ONE IN TEN software engineering. A 20-posting page of
Himalayas returned 2 engineering roles; the rest were sales, admin, clinical and design. A single
call to ONE company ATS board returns 50 to 90 engineering roles:

    Himalayas, one page          20 postings  ->   2 in-field   (1 call)
    Greenhouse gitlab            150 postings ->  73 in-field   (1 call)
    Greenhouse grafanalabs       149 postings ->  89 in-field   (1 call)
    Greenhouse databricks        150 postings ->  89 in-field   (1 call)

THAT IS A THIRTY-FOLD DIFFERENCE IN YIELD PER TOOL CALL. Every previous run built its candidate
list out of aggregators and search results, so it spent its whole budget to look at a few dozen
in-field roles and then reported a zero that was arithmetically guaranteed. You cannot reach 300
in-field postings through the aggregators. You reach it through ATS boards, easily, in about
twenty calls.

*** SO THE SOURCE ORDER IS FIXED AND IS NOT YOURS TO REORDER. ***
  FIRST   sources/ats-boards.md in this repo. It is a VERIFIED list of live company boards with
          their measured engineering counts. Start at the top and work down. These are already
          checked; do not spend calls re-deriving them.
  SECOND  new ATS slugs you harvest, appended to that file at the end of the run.
  THIRD   the bulk aggregators, for coverage of companies not on any list.
  LAST    WebSearch — to DISCOVER company names and slugs, never to build the candidate list.
          In the 15 August run, 14 of 55 search-sourced candidates were dead listings still
          indexed by search engines. Every one cost a fetch and returned nothing.

Count every IN-FIELD posting you actually evaluate against a filter and REPORT THE NUMBER. If you
have run every rung and are still below 300 in-field, keep opening boards from sources/ats-boards.md
until you reach 300 or hit the 320-call ceiling, whichever comes first.

ONLY after all six rungs AND 300 screened may you report fewer than ten. The report must name
every rung, its yield, and the total screened. "The market was empty" is only credible with
that evidence attached.

*** WHAT THIS DOES NOT PERMIT. *** It does not permit inventing a job, a date, a company or an
applicant count. It does not permit packeting a posting you could not open. It does not permit
an AUTH_BLOCKED role. Working harder is the only lever — never a lower evidence bar. If ten
honest jobs do not exist after six rungs, deliver what you have and show your work.

=== BUDGET: PLANNED 250 TOOL CALLS, ABSOLUTE CEILING 320 ===
This routine is the ONLY scheduled task on its account. It does not share a usage budget with
the two email tasks, which run elsewhere. That is why the ceiling is generous compared to
earlier versions: the constraint that forced 120 no longer applies, and an under-resourced run
that reports "BUDGET REACHED" every morning is a worse failure than a slightly expensive one.

Work to 250. Spend it in this order: about fifteen for the preflight, the reads and the
exclusion set, the bulk on discovery and verifying postings, and THIRTY HELD BACK, ALWAYS, for
the CV work and the writes. Research with no packet is a wasted run; a short packet is a real one.

If you reach 250 and are STILL SHORT OF TEN JOBS, you may continue to 320 — but only on calls
that will plausibly close the gap: opening a posting, checking an ATS feed, tailoring or
compiling a CV. Not on retrying something that already failed. Not on a lane that has produced
nothing. 320 IS ABSOLUTE AND IS NEVER CROSSED. Keep the thirty-call reserve either way.

Leave headroom on the account. Stage 2 runs on it too, browser automation is expensive, and
Faisal uses the account himself.

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

*** BEFORE YOU OPEN A SINGLE LANE, READ sources/ats-boards.md AND HAND EACH LANE ITS SLUGS. ***
That file is a verified, measured list of live company boards. Lanes 1, 2 and 3 are where the
in-field volume comes from and they must be run FIRST and run WIDE — every board in the file for
their platform, not a sample. Lane 4 is a supplement, not the backbone. A run that opens six
aggregator pages and four ATS boards has inverted this and will report a zero.

*** NEVER GUESS A SLUG AND THEN TRUST WHAT COMES BACK. ***
On 15 August, WebFetch on invented slugs returned plausible, well-formed, ENTIRELY FABRICATED
job listings — identical postings appeared under two different companies. A guessed slug that
"works" is the most dangerous result in this run, because a fabricated job reaches the packet
looking exactly like a real one. CONFIRM every board by checking that the postings carry a URL
whose domain matches the platform and the company: boards.greenhouse.io/SLUG, jobs.lever.co/SLUG,
jobs.ashbyhq.com/SLUG. If you cannot confirm that, the board is UNVERIFIED and everything from
it is discarded. Do not report it, do not packet it, do not add it to sources/ats-boards.md.
  Lane 1  Greenhouse only.  https://boards-api.greenhouse.io/v1/boards/{token}/jobs?content=true
          -> title, location, first_published
  Lane 2  Ashby only.       https://api.ashbyhq.com/posting-api/job-board/{token}
          -> title, location, publishedAt, isRemote   <- the ONLY structured remote boolean
                                                         anywhere. Disproportionately useful.
  Lane 3  Lever + Workable. https://api.lever.co/v0/postings/{token}?mode=json -> createdAt
          https://apply.workable.com/api/v1/widget/accounts/{token}?details=true -> published_on
  Lane 4  BULK AGGREGATOR APIs. SUPPLEMENT ONLY — they carry hundreds of roles per call but only
          about ONE IN TEN is in-field, so they are expensive per engineering role and cannot
          carry the run. Use them to reach companies no ATS list covers. All verified live on
          15 August 2026 unless marked.
          https://himalayas.app/jobs/api?limit=20&offset=N
            -> title, companyName, pubDate, applicationLink, locationRestrictions, seniority,
               minSalary, maxSalary, currency, employmentType, categories.
            locationRestrictions IS A STRUCTURED FIELD — use it directly for the AUTH
            classification, and currency directly for the pay-currency rule. PAGE DEEPLY with
            offset; the first page is dominated by non-engineering US roles, so filter on
            categories and keep paging rather than judging the feed by page one.
          https://himalayas.app/jobs/api/search?worldwide=true&sort=recent
          https://www.arbeitnow.com/api/job-board-api
            -> slug, company_name, title, description, remote, url, tags, job_types, location,
               created_at (unix). Strong European coverage; filter remote=true.
          DO NOT use remoteok.com/api — it returned 403 throughout the 15 August run. Skip it.
          WeWorkRemotely "Anywhere in the World" region.
          DO NOT try remotive.com or jobicy.com — both ROBOTS_DISALLOWED, verified 15 August.
            Attempting them wastes calls and returns nothing.
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
2. GEOGRAPHY AND PAY CURRENCY.
   Company HQ in: United States, United Kingdom, Ireland, Canada, Australia, any EU or EEA
   country, Switzerland, Norway, United Arab Emirates. PREFER THE UNITED STATES — a US role
   scores higher than an equivalent one elsewhere, all else equal.
   *** PAY MUST BE IN USD, EUR OR GBP. *** If the posting STATES compensation in another
   currency — CAD, AUD, INR, PKR, SGD, anything else — REJECT IT and log "wrong pay currency".
   Faisal is paid in hard currency and a CAD or AUD salary defeats the point of the search.
   Silence is NOT a rejection: most postings state no salary at all, and those stay in. Only an
   explicitly stated non-USD/EUR/GBP figure drops a job. Canada and Australia are on the HQ list
   because their companies frequently pay international contractors in USD; if such a posting
   states CAD or AUD, it goes.
3. WORK AUTHORISATION — REVISED 15 AUGUST 2026. READ THE WHOLE RULE.
   *** A REGION RESTRICTION ALONE NO LONGER BLOCKS A JOB. ***
   The previous version dropped anything whose location list omitted Pakistan. Measured against
   the live market that discarded essentially everything: a sample of 17 consecutive live remote
   postings on 15 August showed 17 of 17 country-restricted and 0 open worldwide. Runs on
   13 and 15 August each screened 150+ postings and delivered ZERO. The filter, not the market,
   was the binding constraint. Faisal has decided he would rather apply and be screened out than
   receive nothing. Classify into three:

     AUTH_OPEN     affirmatively permits worldwide or non-resident hiring. Ashby's isRemote,
                   a stated "hiring anywhere", an empty or worldwide locationRestrictions, or a
                   country list that includes Pakistan. Packet normally, no penalty.

     AUTH_REGIONAL restricted to a region on the HQ allow-list — "Remote (US)", "Remote, UK",
                   "EU only", a country list naming allow-list countries but not Pakistan — with
                   NO explicit demand for local work authorisation. THESE ARE INCLUDED. Label
                   every one in the packet with its exact restriction quoted verbatim, so Faisal
                   sees the odds before spending time. Apply a TEN-POINT low-competition penalty,
                   not because the role is worse but because the odds of a reply are lower.
                   There is NO CAP on how much of the packet may be AUTH_REGIONAL.

     AUTH_BLOCKED  the posting EXPLICITLY demands something he cannot provide: "must be
                   authorised to work in the US", "right to work in the UK required", "must
                   hold EU citizenship", "must reside in <country>", "no visa sponsorship
                   available" tied to a residency requirement, on-site or hybrid presence, or a
                   timezone band requiring more than 4 hours of US overlap from UTC+5.
                   Drop entirely. Never packet.

   The test between REGIONAL and BLOCKED is simple: does the posting merely say WHERE the role is
   remote, or does it state a REQUIREMENT ABOUT THE PERSON? Where alone is REGIONAL. A
   requirement about the person is BLOCKED. When genuinely ambiguous, treat it as REGIONAL and
   say so in the packet. Report all three counts separately.
4. Freshness per the target block above.
5. IN FIELD. The role must sit in one of these, and this list is the whole scope:
     - software engineering generally, at any level below staff
     - frontend
     - backend
     - full-stack
     - system design and software architecture
     - cloud, infrastructure, DevOps-adjacent product work
     - AI and LLM integration, meaning building features on top of models
     - mobile, React Native, Expo
     - titles that mean "generalist engineer at a small company": product engineer,
       founding engineer, first engineer, software engineer
   OUT OF FIELD, reject without spending audit calls: data science and ML research,
   pure hardware or embedded, QA-only and test-automation-only roles, security research,
   SRE-only on-call operations, blockchain and smart contracts, game development,
   engineering management with no hands-on component, and anything requiring a language
   or framework he does not have where it is the core of the job rather than a nice-to-have.
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

=== STEP 7 — GET A CV FOR EACH JOB. CHECK THE LIBRARY BEFORE TAILORING. ===
NOW read cv/cv-master.tex, cv/resume.cls and resumes/index.md (deferred per rule B).

*** DO NOT TAILOR FROM THE MASTER UNTIL YOU HAVE CHECKED THE LIBRARY. ***
resumes/ holds every CV this pipeline has ever produced, and resumes/index.md is its catalogue.
Tailoring is the most expensive work in the run. Re-tailoring something already tailored is
pure waste, and it is the reason this step exists.

Work down these three rules in order and stop at the first that applies:

  RULE 1 — EXACT JOB ALREADY HAS A CV. If resumes/index.md has a row whose job_url matches this
  posting after the same normalisation you used in STEP 2, that CV was built for this exact
  role. REUSE IT VERBATIM. Do not re-tailor and do not "improve" it. This happens when a job
  was prepared but never submitted and is still live. Record reuse_of in the index row and log
  it in your report as REUSED.

  RULE 2 — A CLOSE ENOUGH VARIANT EXISTS. If a row shares this job's archetype AND at least
  three of the named technologies in the job description, START FROM THAT FILE rather than the
  master. Change only the SUMMARY block so it names this company and mirrors this description.
  Leave experience, projects and skills as they are — they were already fitted to this
  archetype. Record derived_from in the index row and log it as DERIVED.
  Archetypes: frontend, backend, fullstack, mobile, ai-integration, cloud-infra, generalist.
  Pick exactly one per job and write it in the index.

  RULE 3 — NOTHING CLOSE. Tailor from cv/cv-master.tex as below. Log it as FRESH.

*** REUSE NEVER MEANS SENDING A GENERIC CV. *** If a candidate CV names a different company in
its summary, or leads on a stack this job does not ask for, it is NOT close enough — fall to
the next rule. A recycled CV that reads as recycled is worse than no application. When in
doubt, tailor fresh; the budget can afford it and the credibility cannot afford the alternative.

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
  4. *** ASSERT THE PDF EXISTS AND IS EXACTLY ONE PAGE. THIS IS NOT OPTIONAL. ***
     Two pages means DROP A PROJECT AND RECOMPILE. Repeat until it is one page. A two-page CV
     never enters the packet and never reaches Stage 2.
     A compile error means FIX IT — never ship a broken CV, and never substitute plain text,
     markdown or any other format for the LaTeX. THE FORMAT IS THE cv/resume.cls LATEX TEMPLATE
     AND NOTHING ELSE. Every tailored CV compiles from that class, keeps its layout, fonts and
     structure, and changes only the four %% TAILORABLE sections.
     Note: the untailored master runs to 2 pages with all five projects. Dropping projects to
     reach one page is expected and is exactly what the PROJECTS marker is for.
     If a job survives every filter but its CV cannot be made to compile to one page, REPORT
     THAT JOB AS BLOCKED rather than shipping a CV in the wrong shape.
  5. SAVE THE TAILORED SOURCE INTO THE LIBRARY as
     resumes/<company-slug>-<role-slug>.tex, so tomorrow's run can reuse it.
  6. Record in the packet THAT IT COMPILED, the page count, the library filename, and whether
     the CV was REUSED, DERIVED or FRESH. Not the path to the PDF.
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
Status for a new row is always "prepared". Stage 2 changes it to "submitted" later, and only
after Faisal confirms he pressed the button himself.
IF ZERO JOBS SURVIVED, DO NOT WRITE THIS FILE AT ALL.
Also append any newly rejected companies to state/standing-rejected.md with a reason.

=== STEP 11b — UPDATE THE RESUME LIBRARY INDEX ===
Append one row to resumes/index.md for every CV you produced or reused today. This is what
makes tomorrow cheaper, and a CV saved without an index row is invisible and will be rebuilt
from scratch. Columns, in this exact order:

    | company_domain | company | role_title | archetype | resume_file | job_url | origin | derived_from | date |

origin is exactly one of REUSED, DERIVED or FRESH. derived_from is the resume_file it started
from, or "-" when origin is FRESH. archetype is one of frontend, backend, fullstack, mobile,
ai-integration, cloud-infra, generalist.
For a REUSED CV, do not add a second copy of the file — add the index row pointing at the
existing file so the reuse is visible in the history.

=== STEP 11c — APPEND ANY NEW VERIFIED BOARDS TO sources/ats-boards.md ===
Every board you opened today that was NOT already in that file, that returned real postings, and
whose postings carried a platform URL matching the company, gets a row: company, endpoint, total
jobs, engineering count, and the location wording quoted VERBATIM. Tier 1 if it hires outside its
own borders, Tier 2 otherwise.
A slug that 404d goes in the dead list in the same file, so tomorrow does not pay for it again.
*** DO NOT ADD A BOARD YOU COULD NOT CONFIRM. *** An unverified slug in this file will be trusted
by every future run, and fabricated postings are the one failure mode this whole pipeline cannot
detect on its own.

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
  a2) TOTAL IN-FIELD POSTINGS SCREENED, and separately the raw postings seen. IN-FIELD IS THE
     HEADLINE NUMBER. Below 300 in-field with fewer than ten jobs delivered means the run was
     unfinished, not that the market was empty. Say so plainly, in those words.
  a3) HOW MANY ATS BOARDS FROM sources/ats-boards.md YOU OPENED, out of how many are in the file.
     A run that opened fewer than twenty boards and reported a zero did not do the work.
  b) Exclusion set size, and applied-jobs row count before and after
  c) Postings screened, and how many dropped for each reason: not remote, wrong HQ, too old,
     undated and uncorroborated, AUTH_BLOCKED, stack mismatch, already applied, dead link —
     with UNREADABLE counted separately, never folded into a reject bucket
  d) The three AUTH counts — OPEN, REGIONAL, BLOCKED — and how many AUTH_REGIONAL entered the
     packet, each with its restriction quoted verbatim
  d2) WHICH ESCALATION RUNGS YOU RAN and what each yielded. Mandatory whenever fewer than ten
     jobs are delivered. A short day without this section is an incomplete report.
  d3) How many postings were dropped for stating pay in a currency other than USD, EUR or GBP
  e) Jobs delivered with both scores
  f) CVs compiled successfully, and any that failed
  g) Any judgement call and what you assumed
  h) Which writes landed, which were deliberately skipped, and whether the commit succeeded
  i) Tool health, and TOTAL TOOL CALL COUNT against the planned 250 and the absolute 320, with
     the size of any overrun and a one-line reason for it
  j) Approximate subagent tokens used, so cost stays visible

Then stop. Do not submit anything. Do not open a browser. Do not send anything.
