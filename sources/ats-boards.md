# Verified ATS boards — read this before opening any other source

Every board below was called live on **15 August 2026** and returned real postings. The
`eng` column is the measured count of software engineering roles on that board at that moment.

**This file exists because source density, not filtering, was what produced four zero days.**
A page of a general remote aggregator is about one in ten engineering. A single company ATS board
is fifty to ninety engineering roles for the same one tool call. Thirty-fold. The run reaches its
300 in-field floor here, in roughly twenty calls, or it does not reach it at all.

## How to use it

Work down **Tier 1 first** — those are the boards that hire people who are not resident in the
company's own country, which is the constraint that actually decides whether an application is
worth sending. Then Tier 2 for volume.

Append new verified boards at the end of a run. **Never append a board you did not confirm**:
check that its postings carry a URL on `boards.greenhouse.io/SLUG`, `jobs.lever.co/SLUG` or
`jobs.ashbyhq.com/SLUG`. On 15 August, WebFetch on invented slugs returned well-formed,
completely fabricated listings — the same postings appearing under two unrelated companies. A
guessed slug that appears to work is the most dangerous result in the run.

---

## Tier 1 — boards that hire outside their own borders

Highest value per call. **Canonical is the single best source in this file**: a hundred roles,
about thirty-five of them engineering, and its location field literally reads *"Home based -
Worldwide"*.

| company | endpoint | total | eng | location wording, verbatim |
|---|---|---|---|---|
| Canonical | `boards-api.greenhouse.io/v1/boards/canonical/jobs` | 100 | ~35 | `Home based - Worldwide`, `Home based - EMEA`, `Home Based - APAC` |
| GitLab | `boards-api.greenhouse.io/v1/boards/gitlab/jobs` | ~150 | ~73 | `Remote, Canada`, `Bangalore, India` |
| Railway | `api.ashbyhq.com/posting-api/job-board/railway` | 7 | 6 | `Global` |
| Grafana Labs | `boards-api.greenhouse.io/v1/boards/grafanalabs/jobs` | 149 | 89 | remote on 149 of 149 |
| Twilio | `boards-api.greenhouse.io/v1/boards/twilio/jobs` | 200 | 87 | remote on 200 of 200 |
| Samsara | `boards-api.greenhouse.io/v1/boards/samsara/jobs` | 150 | 21 | remote on 115 of 150 |
| Linear | `api.ashbyhq.com/posting-api/job-board/linear` | 8 | 6 | `Remote` |
| Supabase | `api.ashbyhq.com/posting-api/job-board/supabase` | 10 | 2 | `Remote` |
| Buffer | `api.ashbyhq.com/posting-api/job-board/buffer` | 3 | 3 | `Remote` |
| Automattic | `boards-api.greenhouse.io/v1/boards/automatticcareers/jobs` | 18 | 2 | `Remote` |
| Zapier | `api.ashbyhq.com/posting-api/job-board/zapier` | 6 | 3 | `NAMER`, `EMEA`, `APAC` |
| PostHog | `api.ashbyhq.com/posting-api/job-board/posthog` | 5 | 2 | `Remote (EMEA)` |
| Aha! | `boards-api.greenhouse.io/v1/boards/aha/jobs` | small | 2 | `Remote - European Union`, `United Kingdom` |
| Resend | `api.ashbyhq.com/posting-api/job-board/resend` | 13 | 5 | `Americas / Remote / Full-time` |

## Tier 2 — volume. Mostly country-locked, still worth screening.

Country-locked is `AUTH_REGIONAL`, which is **included** under the current rules. These are where
the raw in-field count comes from.

| company | endpoint | total | eng | remote |
|---|---|---|---|---|
| Databricks | `boards-api.greenhouse.io/v1/boards/databricks/jobs` | 150 | 89 | 19 |
| Robinhood | `boards-api.greenhouse.io/v1/boards/robinhood/jobs` | 150 | 89 | 0 |
| Stripe | `boards-api.greenhouse.io/v1/boards/stripe/jobs` | 250 | 87 | 12 |
| Cloudflare | `boards-api.greenhouse.io/v1/boards/cloudflare/jobs` | 150 | 68 | 2 |
| Reddit | `boards-api.greenhouse.io/v1/boards/reddit/jobs` | 60 | 32 | 24 |
| Brex | `boards-api.greenhouse.io/v1/boards/brex/jobs` | 150 | 36 | 0 |
| MongoDB | `boards-api.greenhouse.io/v1/boards/mongodb/jobs` | 70 | 26 | 0 |
| Coinbase | `boards-api.greenhouse.io/v1/boards/coinbase/jobs` | 100 | 23 | 75 |
| Dropbox | `boards-api.greenhouse.io/v1/boards/dropbox/jobs` | 35 | 10 | 34 |
| Elastic | `boards-api.greenhouse.io/v1/boards/elastic/jobs` | 100 | 9 | 0 |
| Airtable | `boards-api.greenhouse.io/v1/boards/airtable/jobs` | 19 | 7 | 9 |
| Modal | `api.ashbyhq.com/posting-api/job-board/modal` | 15 | 10 | New York, on-site |
| Replit | `api.ashbyhq.com/posting-api/job-board/replit` | 8 | 7 | Foster City, hybrid |
| Ramp | `api.ashbyhq.com/posting-api/job-board/ramp` | 8 | 6 | New York, hybrid |
| Sentry | `api.ashbyhq.com/posting-api/job-board/sentry` | 10 | 6 | San Francisco, hybrid |
| Render | `api.ashbyhq.com/posting-api/job-board/render` | 6 | 5 | `Remote: United States` |
| Browserbase | `api.ashbyhq.com/posting-api/job-board/browserbase` | 9 | 5 | San Francisco, on-site |
| Warp | `api.ashbyhq.com/posting-api/job-board/warp` | 10 | 4 | New York, on-site |
| Temporal | `api.ashbyhq.com/posting-api/job-board/temporal` | 10 | 4 | `United States` |
| Vanta | `api.ashbyhq.com/posting-api/job-board/vanta` | 8 | 3 | `Remote U.S.` |
| Turing | `boards-api.greenhouse.io/v1/boards/turing/jobs` | 21 | 7 | `India - Remote` |
| Andela | `api.ashbyhq.com/posting-api/job-board/andela` | 9 | 2 | `North America` |
| Close | `api.ashbyhq.com/posting-api/job-board/close` | 6 | 5 | `USA - Remote` |
| Sticker Mule | `api.ashbyhq.com/posting-api/job-board/stickermule` | 7 | 1 | `Remote` |
| Vercel | `api.ashbyhq.com/posting-api/job-board/vercel` | 0 | 0 | board live, empty that day |

**Tier 1 + Tier 2 is roughly 700 engineering postings for about 40 tool calls.** The 300 in-field
floor is comfortably reachable. It was never the hard part; looking in the wrong place was.

## Added 15 August 2026 (second run) — newly verified

Also verified live and real (postings carry `jobs.ashbyhq.com/SLUG` or `boards-api.greenhouse.io`
URLs matching the company) but **mostly onsite/hybrid at a specific office**, so low
worldwide-remote value — kept for completeness, not promoted to Tier 1.

| company | endpoint | total | eng | location wording |
|---|---|---|---|---|
| Prefect | `api.ashbyhq.com/posting-api/job-board/prefect` | 6 | 4 | `Remote` |
| ScaleAI | `boards-api.greenhouse.io/v1/boards/scaleai/jobs` | 211 | 84 | mostly named cities (SF, NYC, DC, London), not broadly remote |
| Baseten | `api.ashbyhq.com/posting-api/job-board/baseten` | 71 | 37 | San Francisco, mostly on-site |
| WorkOS | `api.ashbyhq.com/posting-api/job-board/workos` | 26 | 14 | `United States & Canada` (some roles), SF on-site (most) |
| Coder | `api.ashbyhq.com/posting-api/job-board/coder` | 23 | 4 | `United States`, `United Kingdom` |
| Airbyte | `api.ashbyhq.com/posting-api/job-board/airbyte` | 10 | 6 | `United States`, `Canada`, SF on-site |
| E2B | `api.ashbyhq.com/posting-api/job-board/e2b` | 11 | 7 | Prague and San Francisco, mostly on-site |
| Neon | `api.ashbyhq.com/posting-api/job-board/neon` | 6 | 3 | New York City, South Korea |
| CircleCI | `boards-api.greenhouse.io/v1/boards/circleci/jobs` | 5 | 3 | `Remote, UK`, `Remote, Ontario, Canada` |
| Raycast | `api.ashbyhq.com/posting-api/job-board/raycast` | 0 | 0 | board live, empty that day |

**Note on this file's Tier 1 list**: eleven of the fourteen boards already in Tier 1 above
(GitLab, Canonical, Railway, Supabase, Buffer, Automattic, Zapier, PostHog, Resend, Linear,
Elastic) are also present in `state/standing-rejected.md` from earlier runs — the two files
were never cross-checked against each other when Tier 1 was built. A future run should not
spend calls re-fetching those eleven without first checking whether the rejection reason still
applies.

## Confirmed dead — do not retry, each attempt is a wasted call

**Greenhouse 404:** doordash, benchling, plaid, sourcegraph, hashicorp
**Ashby 404:** netlify, mixpanel, lattice, clerk, anysphere, retool, cal, tailscale, dbt-labs, fivetran
**No public API on the four supported platforms:** Toptal, Crossover, X-Team, Proxify, Clevertech,
Aerolab (Recruitee), Ghost (Homerun), Doist, Remote.com, Toggl, Chess.com
**Blocked at the source:** remotive.com and jobicy.com (`ROBOTS_DISALLOWED`), remoteok.com (403 all day)

**Greenhouse 404, added 15 August (second run):** digitalocean, huggingface, scale
**Ashby 404, added 15 August (second run):** sst, convex, planetscale, prisma, fly, webflow,
framer, replicate, together-ai, fireworks-ai, appwrite, strapi, hasura, dagster, wandb, groq,
perplexity-ai, windsurf, julius-ai

Two worth a retry despite failing here, because the evidence says the board is real and only the
API identifier was wrong: **Deel** (`jobs.ashbyhq.com/deel` is live in a browser, but the
posting-api slug `deel` returns an empty array) and **Hotjar** (`job-boards.greenhouse.io/hotjar`
exists, `boards-api` 404s on three tries).

## A note on Lever

Every Lever slug in this file is **unverified**. Lever was not reachable from the session that
built this list — its egress policy returned 403 on `api.lever.co`. That is a property of that
one sandbox, **not of Lever**, which was verified working on 15 August from the routine's own
environment with network access set to Full. Run Lane 3 normally; if `api.lever.co` 403s there
too, the environment's network access has been reset to Trusted and that is the thing to fix.
