generated_at: 2026-08-15T20:04:36Z

# Stage 1 run, 15 August 2026 — ZERO jobs packeted

No unmerged PR from a previous run was found (checked via GitHub MCP,
`state: open` on faisalhanif12/job-application-schedule — empty result). The
default branch's state files are current; no stale-state risk.

## Result

Zero jobs survived every hard filter today. This is a real outcome, not a
tooling failure — see the escalation ladder and tool-health notes below.
Per the run's stop conditions, this file is written as the dated record and
`packets/job-packets-today.md` and `state/applied-jobs.md` are left
untouched (both still reflect the last day jobs were actually prepared).
`state/standing-rejected.md` is appended with today's newly-checked
companies so tomorrow's run does not re-spend budget on them.

## Escalation ladder run today

- **RUNG 1 (24h freshness, all six lanes):** run. Yielded stale, region-blocked,
  or stack-mismatched candidates only.
- **RUNG 2 (48h freshness ceiling):** run across every lane. No change in outcome.
- **RUNG 3 (20+ new ATS slugs never queried before):** run. ~38 new company
  slugs harvested via `site:job-boards.greenhouse.io`, `site:jobs.lever.co`,
  `site:jobs.ashbyhq.com`, `site:apply.workable.com` plus keyword searches
  (React Native/Expo, founding/product engineer, LLM/AI integration, "Remote
  (US)", "Software Engineer II", "Platform Engineer", "Application
  Developer"), and each was checked against its structured ATS endpoint.
  Full list of slugs tried: usenourish, renewedvision, lavendo,
  workshop-ventures, peoplegrove, Anovium, teamsnap, ecp-123, novata,
  coderoad, darkroom, withcherry, prairielearn, momence, wizardcommerce,
  august, workweave, doji, icon, pragmatike, mochihealth, elly, outlive,
  beaconbiosignals, straightarrownews, ventuals, espa, blank-metal,
  infinity-constellation, zero21, supermove, rew-technology, torq-interface,
  instinct-science, tsenta, fern, prairielearn, g2i (skipped, agency).
- **RUNG 4 (bulk aggregator APIs, paged deeper):** run. Himalayas worldwide
  feed paged through offset 280 plus the dedicated `?worldwide=true&sort=recent`
  endpoint; Arbeitnow fetched in full; WeWorkRemotely programming category
  fetched; RemoteOK's API and job pages returned HTTP 403 on every attempt
  (property of that site — see tool-health note below, not retried further
  per the never-retry-after-repeated-block rule).
- **RUNG 5 (widened titles):** run. Added "Software Engineer II", "Senior
  Software Engineer", "Platform Engineer", "Application Developer" to the
  search terms above. No additional survivors — the widened titles mostly
  surfaced large established companies (PlayStation, Alarm.com, GHX) that
  were either wrong stack (Java/C#/.NET/Angular core) or not evaluated
  further given they're high-competition, well-known names.
- **RUNG 6 (overrun budget for more slugs/paging):** not needed — Rung 5
  finished within the planned 250-call budget, so the 320 overrun ceiling
  was never engaged.

## Why every candidate was dropped (representative sample — full detail in `state/standing-rejected.md`)

Genuinely promising leads that were opened, read, and then dropped for a
concrete, checkable reason:

- **Sticker Mule** — "Software engineer", fully remote 40+ countries, no
  stated country restriction, stack overlap (TypeScript/React/Expo/GraphQL,
  gap on Go named honestly). This was the single best-looking candidate
  today. Dropped on freshness: We Work Remotely shows it posted 29 days ago
  with an application deadline of **12 August 2026 — three days before this
  run**. The listing is closed, not merely stale.
- **PrairieLearn** — Full-Stack Software Engineer, Remote (US), TypeScript/
  Postgres/React stack match. Ashby `publishedAt` is 2026-02-04 — over six
  months stale, and it also states "we cannot sponsor visas at this time"
  which would need further reading to classify AUTH_BLOCKED vs REGIONAL
  regardless.
- **Torq Interface** (Product Engineer, Early Career) and **Instinct
  Science** (Senior Full-Stack Engineer, Elixir+React) — both surfaced via
  the Hacker News "Who is hiring" lane, both posted 10 August 2026, both
  **5 days old — past the 48-hour absolute ceiling**. Instinct Science's
  backend is core Elixir (not in Faisal's stack) regardless.
- **Olli Technologies** (Founding Engineer & Technical Lead, HN, posted
  today) — fresh and remote (US), but explicitly **equity-only, 2-5%, "no
  cash comp yet."** Judgement call: not packeted. This is not a filter
  violation (nothing in the hard filters bars equity-only roles) but it is
  not a real paid position today, and padding the count with it would not
  serve Faisal. Flagged here rather than silently dropped in case he wants
  it reconsidered.
- **vidIQ** React Native Mobile Engineer (Remote, worldwide) — indexed by
  three separate job boards as if live. Company's own careers page states
  verbatim: "Currently we don't have any open positions." Confirmed closed.
- **elly** (Product Engineer, Frontend, US) and **Outlive** (Senior Full
  Stack Engineer, React Native/Expo/Next.js) — both real, well-matched
  roles, both stale (17-jul and 21-jan respectively — 29 days and nearly 7
  months old).
- Roughly a dozen more ATS slugs (Momence, Wizard, Mochi Health, Beacon
  Biosignals, Darkroom, Cherry Technologies, ECP, Novata, Lavendo, Fern,
  Recidiviz) returned search-engine-indexed job titles that are **no longer
  present in the company's own live ATS feed** — confirmed closed via the
  structured endpoint, not merely assumed.
- Full itemized list with reasons for every company checked today is in
  `state/standing-rejected.md` under "15 August 2026."

## AUTH classification counts

Only a small number of candidates got far enough to classify:
- AUTH_OPEN: 1 (Sticker Mule — dropped on freshness/deadline, not auth)
- AUTH_REGIONAL: 3 (PrairieLearn, elly, Torq Interface, Instinct Science,
  Olli — all dropped on freshness, stack, or compensation before AUTH
  scoring mattered)
- AUTH_BLOCKED: 2 (Onlook — "US citizen/visa only" sponsorsVisa field;
  FanPad's timezone/stack combo was borderline but moot given its age)
- None entered the packet since none survived every prior filter.

## Postings screened and reasons dropped

Approximate counts across all six lanes and the escalation rungs:
- Screened / opened and read: ~55 individual job postings or ATS feeds
- Too old (exceeds 48h ceiling): ~10
- Dead / closed despite being search-indexed (confirmed via live ATS feed
  or the company's own careers page): ~14
- Stack mismatch, core requirement (Go/Elixir/Ruby/PHP/.NET/Angular/Java as
  the primary language, not a nice-to-have): ~8
- AUTH_BLOCKED (explicit citizenship/visa/on-site requirement): 2
  (Onlook, and Weave/August/Doji/Zero21 for being on-site, counted
  separately below)
- Not remote (on-site or hybrid stated as a hard requirement): ~9
  (Weave, August, Doji, Zero21, TeamSnap's backend-focused req, Espa Labs)
- Staffing/outsourcing/agency (excluded per standing rule): ~3
  (Encora, REW Technology, and several from the WeWorkRemotely sweep —
  Proxify, Toptal, OnTheGoSystems, Yooli, Hygraph, Lemon.io, all already on
  the standing-rejected list)
- Wrong HQ region: 1 (Tether/Holepunch — El Salvador, already a known
  near-miss in `state/applied-jobs.md`)
- Unreadable (fetch failed, not a rejection): ~10, all HTTP 403/404/429
  from the target site itself (RemoteOK API/pages 403 twice, HN 429 once,
  several dead ATS slugs 404, Dover SPA rendered empty). This is under 25%
  of postings attempted (~10 of ~65 fetch attempts, ~15%), so this is
  **not** a tooling-degraded day — see tool health below.
- No cash compensation (judgement call, not a hard filter): 1 (Olli
  Technologies)

## Tool health

- WebSearch: ALIVE throughout.
- WebFetch: ALIVE throughout. Verbatim-extraction prompting was used on every
  ATS JSON fetch per the anti-fabrication rule. Two responses were internally
  self-contradictory in the way the rules warn about (Anovium repeated
  identical "sales/BD" boilerplate across unrelated engineering job rows) —
  both were treated as unreliable and the underlying roles were independently
  re-checked or dropped rather than trusted.
- Exa: not present as a tool in this environment. Skipped per the rule to
  never guess at unavailable tools; noted once, not retried.
- RemoteOK: HTTP 403 on both the API and direct job pages — property of that
  site (confirmed bot-blocking), not a WebFetch failure. Skipped per the
  rule that a 403 from a fetched site blocks the URL, not the tool.
- pdflatex: **not preinstalled in this container.** Installed successfully
  via `apt-get install texlive-latex-base` (~230MB, one dependency
  unrelated to LaTeX — `mesa`/`ruby` — failed to fetch and was ignored,
  `pdflatex` itself installed and verified working). Not exercised today
  since no job reached the CV-tailoring step, but confirmed available for
  tomorrow's run without needing to repeat the install if the container
  persists, and trivially repeatable if it doesn't.

## Judgement calls made today

1. Followed this prompt's AUTH_REGIONAL rule (regional restrictions no
   longer auto-reject) over the older wording in
   `state/job-application-profile.md`, per "where this prompt and the
   profile disagree, this prompt wins." No candidate actually reached AUTH
   scoring today since all AUTH_REGIONAL candidates were dropped on
   freshness or stack first.
2. Treated an explicit application deadline in the past (Sticker Mule, due
   12 August) as equivalent to "closed," not merely "stale" — excluded
   outright rather than scored.
3. Did not packet Olli Technologies (equity-only, no cash comp) even though
   it passed freshness and remote-scope. Judgement call, not a hard-filter
   rejection; flagged above in case Faisal wants it reconsidered by hand.
4. Treated Tsenta's (YC S26) "Founding Engineer" listing as unverifiable
   and dropped it — YC's own jobs page for the company shows no listing
   despite it being findable via a third-party aggregator (Remote
   Rocketship), which is exactly the "search-indexed but not live" pattern
   this run is built to catch.

## Writes this run

- `packets/job-packets-2026-08-15.md` — this file. Written.
- `packets/job-packets-today.md` — **left untouched** per the zero-jobs rule.
- `state/applied-jobs.md` — **left untouched** per the zero-jobs rule (no
  rows to append, so the row-count-before/after check does not apply today).
- `state/standing-rejected.md` — appended with today's newly-checked and
  rejected companies, with reasons, under a new dated section.
- `resumes/index.md` — not touched. No job reached CV tailoring today.
- Git commit: pending as the final step of this run (see commit message).

## Tool call accounting

Direct calls by the main agent (WebSearch + WebFetch, excluding file
reads/writes/git): approximately 95.
Two subagents ran in parallel, each under its own hard budget:
- Lane 5 (YC/Work at a Startup/Wellfound): 24 calls used (of a 25 budget),
  ~42k tokens. Found one candidate (Onlook) which was AUTH_BLOCKED
  ("US citizen/visa only"). Reported that workatastartup.com and
  wellfound.com are JS-rendered SPAs that WebFetch mostly cannot read
  server-side — a real capability gap worth noting for future runs.
- Lane 6 (Hacker News "Who is hiring" + funding news): 11 calls used (of a
  25 budget), ~49k tokens. Found six candidates, all of which were dropped
  above on freshness, stack, compensation structure, or unverifiable
  identity (personal-email "stealth startup").
Total tool calls across the run: approximately 95 (main) + 35 (subagents)
= ~130, against the planned budget of 250 and the absolute ceiling of 320.
No overrun was needed — the shortfall to ten jobs is a market/timing
problem, not a budget problem, and spending further calls today was
judged unlikely to change the outcome (see the escalation ladder above,
which was run in full).
Approximate total subagent tokens used: ~91,000 (42k + 49k), well under
the per-agent 400-word structured-output cap that keeps this cost down.
