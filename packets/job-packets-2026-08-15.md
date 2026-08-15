generated_at: 2026-08-15T09:00:00+05:00

# Stage 1 run, 15 August 2026 — ZERO jobs delivered

This is a real outcome, not a failure of process. Documented per the standing rule that a
zero-job day caused by an empty market is different from one caused by broken tooling, and
must be reported honestly either way.

## Preflight

- WebSearch: ALIVE.
- WebFetch: ALIVE. Verbatim-extraction prompting worked cleanly against Greenhouse, Ashby,
  Lever, Workable, Modal, Temporal, PlanetScale boards.
- Exa: NOT AVAILABLE. No Exa tool was present in this session's tool set at all (not a 402 —
  the tool itself never appeared). Noted once, not retried, not delegated to subagents as a
  live option.
- No tool failed outright during the run. A handful of 403/404s were hit (RemoteOK API,
  individual WeWorkRemotely job pages, a few stale/wrong ATS slugs) — these are properties of
  those sites/slugs, not tool failures, and were skipped per the failure-detection rule.
  Unreadable-page rate was well under the 25% threshold that would flag tooling as degraded.

## Exclusion set

Built from `state/applied-jobs.md` "## The list" (27 rows, both before and after this run —
unchanged, since zero jobs survived and the file was correctly left untouched per the stop
condition). Exclusion set: 27 company domains + 27 job URLs = 54 entries, OR-matched.
Plus `state/standing-rejected.md`: 111 previously-rejected company names checked before this
run, now 168 after today's additions (see below).

## Discovery coverage

Four parallel/sequential subagent sweeps, one per exclusive lane, plus a final direct
spot-check of 6 additional well-known ATS boards run by the main agent:

1. **Greenhouse + Ashby** — boards checked: vercel, warp, gocardless, truelayer, cleo,
   bitpanda, wolt, chainguard, censys, testlio, customer.io (Greenhouse); elevenlabs,
   deepgram, vapi, cartesia, harvey, sierra, decagon, baseten, speak, griffin, paddle, float,
   helpscout (Ashby). 34 calls. Zero survivors.
2. **Lever + Workable + worldwide aggregators** (Himalayas, WeWorkRemotely "Anywhere in the
   World", RemoteOK) — ~10 targeted searches plus direct ATS/aggregator fetches. 37 calls.
   Zero survivors.
3. **YC / Work at a Startup / Wellfound** — historically the highest-yield lane; checked YC
   jobs board across software-engineer/remote and Europe-location filters, plus Wellfound.
   41 calls. Zero survivors.
4. **Hacker News "Who is hiring" (August 2026 thread, story 49156683) + funding news
   (last 14 days)** — enumerated 17 top-level job comments, checked 6 within the 48h window,
   plus 9 recently-funded companies. 27 calls. Zero survivors.
5. **Main-agent spot-check**: Clerk (Ashby, empty board), Cal.com (Ashby, 404 — slug not
   found), Modal (Ashby, 13 roles, all >1 month old or non-remote NY/SF), Temporal (Ashby,
   10 roles, all >1 month old, none remote-tagged), PlanetScale (Greenhouse, 10 roles, all
   either SF-based or 5+ months stale), Neon (Greenhouse, 404 — slug not found). 6 calls.
   Zero survivors.

**Total postings/boards screened: roughly 60 ATS boards/aggregator queries plus ~35 individual
job postings opened and read in full across all lanes.**

## Why zero: breakdown by rejection reason

- **Too old (exceeds the 48h ceiling), verified against the ATS date field**: Customer.io
  (~5 days), Paddle (~75h), Deepgram (~49h, borderline), Sticker Mule (~3d per WWR), MLabs
  (posted 2026-07-14), most of the HN thread (thread itself dated 2026-08-03, only 6 of 17
  comments fell inside the 48h window), Modal/Temporal/PlanetScale roles (weeks to months
  old), Freehand and Bidbus funding news (outside the 14-day funding window).
- **AUTH_BLOCKED (explicit exclusion, a country list omitting Pakistan, or US/EU-only
  remote)**: Creatunity (Remote from Europe only), Contentsquare and MoonPay (explicit
  country lists), Rhizome AI (LatAm-only), Helios Intelligence and Agave and Simbie AI and
  Duckie and 83 Sciences and Fieldguide (Remote US only), Allus AI (CA/GA US only), Tailor
  (US citizenship/visa required), Ashby's own EU/GB-restricted roles.
- **Not actually remote**: TrueLayer (Milan office), GoCardless/Wolt/Bitpanda (hybrid/office),
  Choco (Berlin hybrid), DAT/Orbit Technologies/Alaffia Health (US city offices), Hera
  (in-person Berlin).
- **Wrong HQ**: Scispot and PolicyMe (Canada), Delightree (Bengaluru, India).
- **Stack mismatch on the core requirement**: Grailed (Ruby/Sorbet), Sticker Mule/Roame
  (Go), Asendia AI/83 Sciences/Evaboot (Python), Aqora Quantum (Rust), Yuno (Kotlin/Spring
  Boot/Go), Chainguard/Wolt/Bitpanda (Go/Java/Kotlin/Rust).
- **Out of field**: Ohm (hardware/battery testing), Voltic (mechanical/hardware, part-time),
  Pathway (frontier ML research), Turing College (part-time teaching/mentoring, not core
  SWE), DAT (engineering-manager, no hands-on).
- **Stale or closed listings that read fresh in search snippets**: Zen Educate, Jeeves,
  Washmen, Epoch AI, Lessonspace, Student.com — all had zero open roles on their live Lever/
  Workable boards despite appearing in search results.
- **Staffing/agency pattern**: Prophet Town LLC ("on-demand teams for clients").
- **Could not locate a real ATS listing to open (must-open rule not satisfiable)**: Cytix (no
  engineering roles at all, only sales), June AI (no discoverable careers page), Wellinks (no
  SWE posting found), AutoAce (fresh YC lead but no working job URL could be located after
  a stale-slug 404 and search follow-up).

**Rejected count by reason**: too old ~10, AUTH_BLOCKED ~10, not remote ~9, wrong HQ 3, stack
mismatch ~9, out of field 5, stale/closed listing 6, staffing agency 1, unreadable/unlocatable
4. Unreadable is counted separately from rejected per the rule — it was 4 of roughly 95
opened postings, about 4%, well under the 25% degraded-tooling threshold.

## AUTH classification counts

AUTH_OPEN: 0. AUTH_BLOCKED: 10 (dropped, never packeted). AUTH_SILENT: 0 (no posting reached
AUTH_SILENT because every otherwise-promising lead failed on freshness, HQ, remote status, or
stack before authorization became the deciding filter).

## Jobs delivered

None. Zero jobs survived every hard filter simultaneously.

## Judgement calls

- Treated "Ashby" the company (not just the ATS platform of the same name) as a normal
  candidate when its own board surfaced during the Greenhouse+Ashby lane; its roles were
  GB/EU-residency-restricted, so it was rejected on AUTH, not skipped as a naming collision.
- AutoAce (YC F26, freshest lead of the day) was NOT packeted despite looking promising,
  because no subagent could locate a working job URL to open — the rule that every posting
  must have a URL actually opened and read was treated as binding even under budget pressure.
- Did not stretch the "undated, uncorroborated" allowance for any YC/Work at a Startup
  listing today — none of the undated leads found had a strong enough corroborating signal
  (no fresh-batch-plus-launch-signal combination was found before other filters eliminated
  each candidate first).

## Writes this run

- `packets/job-packets-2026-08-15.md` — written (this file).
- `packets/job-packets-today.md` — deliberately left untouched, per the zero-jobs rule, so an
  unrun Stage 2 does not lose 7 August's still-live packet.
- `state/applied-jobs.md` — deliberately NOT written, per the zero-jobs rule. Row count
  before and after: 27, unchanged.
- `state/standing-rejected.md` — updated with today's newly-checked-and-rejected companies
  (see below), since that file's purpose is exactly this and is not conditioned on jobs
  surviving.
- `resumes/index.md` — not touched. No CV was tailored, since zero jobs survived to Step 7.
- `cv/cv-master.tex`, `cv/resume.cls` — never read this run, per efficiency rule B (no job
  survived to require them).
- Commit: made, covering the two files above.

## Tool health and budget

No dead tools. WebSearch and WebFetch stayed alive and functional throughout. Total tool call
count across the whole run (main agent + all four subagents): approximately 158, against the
planned 250 and the absolute ceiling of 320. No overrun — the run stopped well inside budget
because four independent, thorough lanes plus a fifth spot-check all converged on the same
zero result, and the instructions are explicit that grinding a lane that has already produced
nothing does not buy a better outcome. Pushing to 250 would have meant re-treading the same
four lanes' territory with no new source of postings to check.

Approximate subagent token usage: Lane 1 (Greenhouse+Ashby) ~74k, Lane 2 (Lever+Workable+
aggregators) ~71k, Lane 3 (YC/Wellfound) ~79k, Lane 4 (HN+funding) ~69k. Total ~293k subagent
tokens.

## Bottom line

Ten real jobs is a good day. Zero is a real outcome, and today the market did not have ten —
or any — postings that were simultaneously fresh (≤48h), genuinely remote, HQ'd in an
eligible region, hiring without a Pakistan-excluding restriction, and in field. This is the
second zero-job day in three runs (13 August also delivered zero after screening 150+). If a
third zero-job day follows soon, the target or the method should be revisited rather than the
budget quietly creeping upward — noting that now, as instructed, in case a future run needs it.
