# APPLIED JOBS - do not apply twice

Authoritative record of every job prepared or submitted. Read this BEFORE researching.

## How to use

Build ONE blocked set from the table:
  BLOCKED_JOB_URLS - every job_url value, regardless of status

Reject a candidate ONLY if its job URL is blocked. *** DO NOT BUILD A COMPANY BLOCK LIST
FROM THIS TABLE. *** Changed 15 August 2026, and the change matters: blocking by company
meant one prepared-and-never-submitted row closed an entire employer forever. A single
7 August row had put all 200 Twilio postings out of reach, 87 of them engineering and every
one remote. Twenty-seven rows had closed twenty-seven companies.

A DIFFERENT ROLE AT A COMPANY ALREADY IN THIS TABLE IS A GOOD APPLICATION. Prepare it.
The only limit is packet shape: at most three roles from one company in a single run.

Company-level blocking lives in exactly two places - the permanent exclusions table below,
and state/standing-rejected.md. Nowhere else.

Companies in claude/do-not-contact.md ARE allowed here. That list governs cold email
only, not job applications. But do check it: if a company appears there, Faisal has
already emailed that founder, so flag it in the packet so he knows before submitting.

## Permanent exclusions, never apply

| company | reason |
|---|---|
| Techxelo | current employer |
| Viral Square | previous employer |
| Tanisha Systems | staffing agency |
| any staffing, outsourcing, recruitment or body-shop firm | resells engineers onto a bench |

## Status values

  prepared  - packet built, not yet submitted. BLOCKS further applications
  submitted - application sent
  rejected  - rejected. Blocks for 6 months
  interview - in process

## After every run - mandatory

Append one row per job prepared, then project_write the whole file back to this path,
then project_read it again to confirm the rows are there. If the write fails, say so at
the top of the report.

## The list

| company_domain | company | role_title | job_url | posted | fit | low_comp | date | status |
|---|---|---|---|---|---|---|---|---|
| cogram.com | Cogram | Ex Technical Founder (Product Engineer) | https://www.ycombinator.com/companies/cogram/jobs/LDTrViN-ex-technical-founder-product-engineer | Undated on the YC board | 80 | 85 | 2026-08-06 | prepared |
| bloom.diy | Bloom | Founding Engineer | https://www.workatastartup.com/jobs/77797 | Undated on Work at a Startup | 85 | 78 | 2026-08-06 | prepared |
| afriex.com | Afriex | Senior React Native Performance Engineer | https://www.ycombinator.com/companies/afriex/jobs/4VtOnnB-senior-react-native-performance-engineer | Undated on the YC board | 82 | 80 | 2026-08-06 | prepared |
| pelica.com | Pelica Health | Full Stack Software Engineer (Contract) | https://www.ycombinator.com/companies/pelica/jobs/aPWMaiq-full-stack-software-engineer | Undated on the YC board | 78 | 75 | 2026-08-06 | prepared |
| useconstant.com | Constant | Founding Engineer | https://www.workatastartup.com/jobs/79395 | Undated on Work at a Startup | 70 | 82 | 2026-08-06 | prepared |
| codekeeper.co | Codekeeper | Senior Full Stack Developer | https://codekeeper.applytojob.com/apply/e6W4HRCq2b/Senior-Full-Stack-Developer | 3 August 2026 | 92 | 58 | 2026-08-06 | prepared |
| trysmartcuts.com | Smartcuts | Software Engineer & Employee #4 | https://www.ycombinator.com/companies/smartcuts/jobs/bsu2s2O-software-engineer-employee-4 | Undated on the YC board | 62 | 85 | 2026-08-06 | prepared |
| portless.com | Portless | Senior Software Engineer | https://himalayas.app/companies/portless/jobs/senior-software-engineer | 6 August 2026 | 87 | 55 | 2026-08-06 | prepared |
| compose.ai | Compose.ai | Senior Full Stack Engineer | https://www.workatastartup.com/jobs/48534 | Undated on Work at a Startup | 78 | 60 | 2026-08-06 | prepared |
| sbigrowth.com | SBI Growth Advisory | Senior Forward Deployed Engineer (FDE) | https://himalayas.app/companies/sbi-growth/jobs/senior-forward-deployed-engineer-fde | 6 August 2026 | 84 | 48 | 2026-08-06 | prepared |
| gogograndparent.com | GoGoGrandparent | Backend Engineer | https://www.ycombinator.com/companies/gogograndparent/jobs/2vbzAw8-backend-engineer | 5 August 2026 per YC's remote index | 88 | 42 | 2026-08-06 | prepared |
| itsdart.com | Dart | Frontend Engineer | https://www.ycombinator.com/companies/dart/jobs/AMpkzCj-frontend-engineer | Undated on the YC board | 58 | 72 | 2026-08-06 | prepared |
| voygr.tech | VOYGR | Full-Stack Engineer | https://www.ycombinator.com/companies/voygr/jobs/1jEkxzx-full-stack-engineer | Undated on the YC board | 58 | 70 | 2026-08-06 | prepared |
| xapobank.com | Xapo Bank | Software Engineer (Remote - Work from Anywhere) | http://job-boards.greenhouse.io/xapo61/jobs/7572065003 | Undated | 66 | 52 | 2026-08-06 | prepared |
| skio.com | Skio | Software Engineer | https://www.ycombinator.com/companies/skio/jobs/GTJ6SAt-software-engineer-platform | Undated on the YC board | 72 | 38 | 2026-08-06 | prepared |
| nucleussec.com | Nucleus Security | Software Engineer - Platform | https://himalayas.app/companies/nucleus-security/jobs/software-engineer-platform | 6 August 2026 | 52 | 55 | 2026-08-06 | prepared |
| quartermaster.us | Quartermaster | Senior Full Stack Software Engineer | https://himalayas.app/companies/quartermaster/jobs/senior-full-stack-software-engineer | 6 August 2026 | 55 | 40 | 2026-08-06 | prepared |
| heypocket.com | Pocket | Backend Engineer | https://www.ycombinator.com/companies/pocket/jobs/klh5zDd-backend-engineer | Undated on the YC board, YC Winter 2026, very recently launched | 80 | 78 | 2026-08-07 | prepared |
| sorce.jobs | Sorce | Software Engineer, Browser Agents | https://www.ycombinator.com/companies/sorce/jobs/0YqEbll-software-engineer-browser-agents | Undated, YC Fall 2025, product launched Oct 2025 | 60 | 75 | 2026-08-07 | prepared |
| metorial.com | Metorial | Backend Engineer | https://www.ycombinator.com/companies/metorial/jobs/7617xcj-backend-engineer | Undated, YC Fall 2025, launched via Hacker News Nov 2025 | 62 | 82 | 2026-08-07 | prepared |
| getcargo.io | Cargo | Senior Product Engineer | https://www.ycombinator.com/companies/cargo/jobs/frqAMJ9-senior-product-engineer | Undated, YC Summer 2023, actively hiring | 85 | 55 | 2026-08-07 | prepared |
| activepieces.com | Activepieces | Senior Software Engineer (React & Product) | https://www.ycombinator.com/companies/activepieces/jobs/TMVg5qZ-senior-software-engineer-react-product | Undated on the YC board, YC Summer 2022, established | 82 | 40 | 2026-08-07 | prepared |
| getbaraka.com | Baraka | Sr Software Engineer (Backend) | https://www.ycombinator.com/companies/baraka/jobs/i5coaKk-sr-software-engineer | Undated on the YC board, YC Summer 2021, team size 34 | 85 | 60 | 2026-08-07 | prepared |
| twilio.com | Twilio (Stytch) | Senior Software Engineer, Identity | https://weworkremotely.com/remote-jobs/twilio-senior-software-engineer-identity | Posted 4 hours ago per WWR | 50 | 20 | 2026-08-07 | prepared |
| scrambly.io | Scrambly | Senior Backend Engineer (Node.js) | https://himalayas.app/companies/scrambly/jobs/senior-backend-engineer-node-js | Very fresh, Himalayas pubDate matched live updatedAt | 88 | 70 | 2026-08-07 | prepared |
| powerprozesse.de | Powerprozesse | Senior Full-Stack AI-Developer | https://remotive.com/remote/jobs/software-development/senior-full-stack-ai-developer-4460060 | Posted yesterday per Remotive | 90 | 75 | 2026-08-07 | prepared |
| remote.com | Remote.com | Senior DevOps Consultant (Remote Build) | https://remote.com/openings/7763713003 | Posted 2 days ago per Remote.com's own careers page | 45 | 25 | 2026-08-07 | prepared |

## Rejected on 6 August with a reason worth keeping

Not blocked, but do not waste time re-researching these without new information.
The binding constraint this run was NOT freshness or remote status. It was that almost
every remote engineering role is locked to a country list that excludes Pakistan.

- Country-locked, verified from the posting text: Stacksync, Instrumentl, Ohm, testRigor,
  Athelas, Blaze, Numeral, Oneleet (US and NATO only), BlueCargo, Jiga (GB/UA), Hightouch,
  LaunchDarkly, Mercury, Outschool, TripSuite, Raydar, Root, Greenfly, ClickHouse (NL),
  OneVest (CA), Sezzle, Makersite (EU only), WorkMotion (CET plus or minus 2).
- Timezone beyond a 4 hour US overlap: Pinnacle (6-8h US Central), Rhizome AI (5h Pacific),
  SeedTrust (9 to 6 US Eastern), Virtasant, CLARA Analytics, Runway (within 6h of NYC).
- LATAM or India only: Minerva, Solum Health, Feather, WarpBuild, Suzega.
- HQ in Asia or otherwise outside the allowed regions: Tailor (Tokyo), Bjak (Singapore),
  Sertis (Bangkok), Kake (Hyderabad), erad (Riyadh, Saudi Arabia - not a permitted region),
  Tether (San Salvador, El Salvador - perfect Node/MySQL/MongoDB fit and worldwide remote,
  rejected on HQ only, worth a second look if the region rule is ever relaxed).
- Stale reqs that read as fresh on aggregators: Railway Product Engineer (Ashby
  publishedAt 2024-02-07), Whippy Frontend (2025-08-14), Neuroscale Founding SWE
  (2026-01-02), Breadboard (2022), Airx (2022), TripSuite (2022), Aktos (2024),
  CloudLinux (2026-07-21), Tamnoon Fullstack (Workable datePosted 2026-07-22 despite a
  mirror site showing Aug 5). Always trust the ATS date field over a scraper's date.
- Agencies, body shops and marketplaces auto-rejected: Toptal, A.Team, Lemon.io, Proxify,
  Andela, Turing, Azumo, Mercor, Remotebase, Jobgether, Rockstar, Somewhere, LMG Staffing,
  Launchpad, Teravision, pubGENIUS, RaftLabs, DaCodes, Stack Builders, SmartLogic, Zipdev,
  Ubiminds, Arionkoder, N-iX, Factored, JetBridge, Kubikware, Spektra Systems.
- Poor stack fit, real companies, not blocked: Validation Cloud (Go), GRID eSports
  (Kotlin/Go), Pindrop (Go/Python), Capacity (Python/Rust/C++), Nethermind (Rust/Go/C#).
  All were fresh and location-clean. Dropped rather than padding the list to 20.

## Method notes for the next run

Three ATS endpoints return a hard first-published date and should be the backbone of
future freshness checks, because scraper and aggregator dates are unreliable:
  https://boards-api.greenhouse.io/v1/boards/{token}/jobs         -> first_published
  https://boards-api.greenhouse.io/v1/boards/{token}/jobs/{id}    -> first_published, cheap
  https://api.ashbyhq.com/posting-api/job-board/{org}             -> publishedAt
  https://apply.workable.com/api/v1/widget/accounts/{acct}?details=true -> published_on
  https://api.lever.co/v0/postings/{org}?mode=json                -> createdAt
  https://himalayas.app/jobs/api?limit=20&offset=N                -> pubDate, sweepable
  https://himalayas.app/jobs/api/search?worldwide=true&sort=recent -> best single tool
  found on 7 August for genuinely worldwide + recent filtering in one call.

Work at a Startup and the YC job pages publish NO date at all. That is why undated rows
above are marked as such - they are live and in-lane, but their age cannot be proven.

Himalayas' empty locationRestrictions field does NOT mean worldwide. It means the source
ATS declared nothing. The job description text has to be read every time.

## 7 August 2026 - ten job packets prepared, six discovery sweeps run

Six parallel sweeps ran today (Greenhouse+Ashby, Lever+Workable, YC/Work-at-a-Startup/
Wellfound, RemoteOK+WWR+Himalayas+Remotive, a "known worldwide-remote employer" targeted
sweep, and an AI/LLM-native Ashby sweep), screening well over 300 postings combined. Only
10 survived every hard filter (fresh, remote, HQ in USA/UK/Europe/UAE, genuinely hires
internationally with no hidden country/timezone lock, not already blocked). This is a much
lower yield than 6 August (17 of ~character similar volume) - the market simply had fewer
genuinely open, fresh, unrestricted postings today. No padding was done; all 10 were
prepared rather than stretching to weaker matches. Two of the ten are honest stretches and
are flagged as such in the packet: Twilio/Stytch wants 6+ years (Faisal has 3+) and is a
large well-known company (high competition, low_comp score 20); Remote.com's DevOps
Consultant role is Terraform/Kubernetes-heavy with Node.js only "nice to have" (fit score
45) and its "Consultant"/"Remote Build" title suggests it may be a contract engagement,
not confirmed FTE - Faisal should verify engagement type before applying.

Rejected today, worth keeping so future runs don't re-research from scratch:

- Explicit country-block naming Pakistan or a list that excludes it: Teramind (explicit
  blocklist including Pakistan, Cuba, Iran, Russia, North Korea, Syria), Nango, Infisical
  (both the "Global" and direct variants), Hatchet, kapa.ai, Runway, Stacksync (Python/Go
  stack too, not just location), Palla, YouShift, MindFi, Zepto, FurtherAI, DualEntry
  (EU/LATAM/Canada only), Hygraph (EMEA only), Platform.sh/Upsun (Canada/France/Germany/
  Spain/UK only).
- Visa field says "US citizen/visa only" despite worldwide-sounding body copy elsewhere in
  the same posting - treat the structured field as authoritative: Apollo.io (both Backend
  and DevOps roles), Alpaca, Draftwise, Chima, Pointhound, Y/n, Nest Genomics, arnata,
  Glass Health, Casco, Orange Slice, Sully.ai (UAE role).
- Timezone-overlap requirement that excludes UTC+5 (Lahore): GrowthBook (hard US-timezone
  requirement), Wasmer (CET +/-2h), Alaro (GMT-5 to GMT+1), MemberSpace ("Western
  Hemisphere, ideally USA" despite an "Anywhere in the World" board tag - body text
  overrides the tag).
- HQ outside allowed regions: Yassir (Algeria), Insider One (Istanbul), MixRank/OpenUnit
  (Toronto, Canada - not USA/UK/Europe/UAE), Yooli (WWR tagged "Anywhere in the World" but
  actually HQ'd in Perth, Australia), Whip/Tensorfuse and FurtherAI (India).
- HQ genuinely disputed, treated as excluded pending resolution: Supabase - Forbes/YC list
  San Francisco, but Pitchbook/CB Insights/its own Terms of Service and an SEC Form D/A
  filing list the registered entity as Supabase Pte. Ltd., Singapore. Worth resolving if
  Faisal wants to chase this one specifically.
- Stale despite reading fresh in search snippets (always re-verify against the ATS date
  field, never trust the snippet): Sweed (Ashby publishedAt ~30 days), Collabora (both
  roles 1-2 months), Whereby (2020, standing pool), Metabase (2020), Buffer (both
  qualifying roles just outside 72h), Canonical Web Frontend role (~3 weeks), Neuroscale
  AI (Jan 2026), The Flex/Base360.ai (~7+ weeks), Melotech (Feb 2026), Comet Rocks
  (~4 months, and Vue not React), Hermes Web/Open Core Ventures (~2 months).
- Real companies, wrong role shape or hybrid despite remote framing: Numeral (hybrid SF/
  NYC, not remote), Featherless AI (ML inference systems role, not app-stack fit),
  Oneleet (Amsterdam HQ but role explicitly "US/EU Remote" only), Humaans (in-person),
  Cua (Madrid hybrid preferred), Safepay (Karachi-based - moot, Faisal is already there),
  Cozmo AI and Ziina (Dubai-adjacent but actual roles are US-remote or relocation-required).
- Job-board-mill pattern worth flagging generally: careerswift.ai (Ashby) posted
  near-identical roles under two different company names with inconsistent location
  fields - treat this pattern (template text, mismatched company identity) as a signal to
  skip without a specific named exclusion rule needed.
- Staffing/outsourcing marketplaces newly seen today, add to the standing mental
  exclusion list alongside the 6 August set: Smart Working Solutions, South Geeks,
  Softermii, Remote World LLC (registered as an outsourcing consultancy), 3Pillar,
  Sutherland, Truelogic, WOW Remote Teams, Team Up Services, micro1 (AI-training-data
  gigs, not product engineering), Confiz/Consultfiz, Pavago, EQL Tech, Talentpluto,
  Huzzle, Robusta/Octopus by RTG, HireHawk, Hunt St, Workana.

Near-misses worth a periodic recheck rather than a permanent exclusion: Buffer (two good
React/TypeScript roles, worldwide, just outside the freshness window on 7 August - recheck
next run), Canonical Web Frontend Engineer (Home based - Worldwide, strong stack match,
just stale today), Tether (San Salvador HQ, otherwise a perfect fit, blocked on HQ only).
