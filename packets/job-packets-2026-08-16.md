generated_at: 2026-08-16T09:30:00+05:00

# Stage 1 packet, 16 August 2026

THIN DAY. 10 discovery lanes run, 948 in-field postings actually screened (well past the
600-in-field floor), and only 4 jobs survived every hard filter. See the session report for
the full rung-by-rung breakdown. This is not a relaxed-filter count; every job below was opened,
read, and independently verified against the live posting or its structured ATS feed.

All four company domains are new to `state/applied-jobs.md` (no company here has been applied
to before). Roo supplies two of the four roles, which is within the three-per-company cap.

---

## Job 1 of 4 — Roo — Full Stack Engineer

- **company:** Roo
- **company_domain:** roo.vet
- **role:** Full Stack Engineer
- **job_url:** https://job-boards.greenhouse.io/roo/jobs/5391583008
- **posted:** first_published 2026-08-14T13:00:18-04:00 (2 days old, Roo's own Greenhouse board, not seen cross-posted)
- **fit score:** 88/100
- **low_competition score:** 55/100 (AUTH_REGIONAL -10 penalty applied)
- **applicant_count:** not published
- **AUTH classification:** AUTH_REGIONAL. Location field reads generic "Remote" with no explicit country restriction found in the posting text. However salary is presented in five US metro cost-of-living tiers (e.g. Tier 1 "$150,000 - $195,000 USD" down to Tier 5 "$115,000 - $150,000 USD"), which strongly implies US-centric hiring even though no sentence explicitly excludes non-US applicants. Treated as REGIONAL under the ambiguous-defaults-to-regional rule, not AUTH_OPEN.
- **pay:** USD, tiered. No explicit currency problem (USD is allowed).
- **cv_compiled:** yes, 1 page, verified with pdflatex twice
- **cv_library_file:** resumes/roo-fullstack-engineer.tex (origin: DERIVED from resumes/vanta-fullstack-integrations-platform-engineer.tex, summary block only changed)
- **stage2_status:** not_submitted
- **note:** Roo is a veterinary relief-work marketplace (HQ San Francisco, CA, US — confirmed by search, allowed under the HQ list). Company not in `state/standing-rejected.md`.

### Cover letter (134 words)

Roo turns veterinary relief work, historically run on phone calls and spreadsheets, into a real marketplace connecting vets and vet techs with hospitals that need coverage. I have spent three years building full-stack products end to end: React and Next.js on the frontend, Node.js and Express APIs backed by MongoDB and MySQL, tested with Jest along the way. At Techxelo I designed RESTful APIs and shipped five-plus full-stack applications that drove client acquisition directly, and at Viral Square I built React Native apps in Expo, which lines up with Roo's mobile surface. I have not worked in veterinary or healthcare-adjacent marketplaces before, but the underlying problem, matching supply and demand reliably under real-world constraints, is one I have solved in other domains. I would welcome the chance to talk through how I could contribute.

### Screening answers

| Field | Answer |
|---|---|
| Full name | M Faisal Hanif |
| Email | mehrfaisal111@gmail.com |
| Phone | +923148166354 |
| Location | Lahore, Pakistan |
| LinkedIn | https://www.linkedin.com/in/faisal-frontend-developer/ |
| GitHub | https://github.com/FaisalHanif12 |
| Portfolio | https://faisalhanif.work |
| Work authorization | Not a US/local resident; role is remote and contractor-friendly. No sponsorship required for a remote engagement. |
| Do you require sponsorship | No sponsorship needed for a remote role. |
| Willing to relocate | No, remote only |
| Notice period | 2 weeks |
| Earliest start | 2 weeks from offer |
| Years of experience | 3+ |
| Current employer | Techxelo |
| Current title | Software Engineer |
| Degree | BS Software Engineering, University of Management and Technology (UMT), 2020-2024 |
| Salary expectation | Tier 5 band applies (remote, outside US metro): $125,000 USD/year, lower-middle of the stated $115,000-$150,000 Tier 5 range |
| Pronouns | He/Him |
| Gender | Male |
| Race / ethnicity | Asian (Not Hispanic or Latino) |
| Veteran status | I am not a protected veteran |
| Disability status | I do not wish to answer |

### Full tailored CV LaTeX

```latex
\documentclass{resume}
\usepackage[left=0.4 in,top=0.4in,right=0.4 in,bottom=0.4in]{geometry}
\usepackage{hyperref}
\newcommand{\tab}[1]{\hspace{.2667\textwidth}\rlap{#1}}
\newcommand{\itab}[1]{\hspace{0em}\rlap{#1}}
\name{M Faisal Hanif}
\address{
\href{https://www.linkedin.com/in/faisal-frontend-developer/}{Faisal-Hanif LinkedIn} \\
\href{https://github.com/FaisalHanif12}{Faisal-Hanif GitHub}
}
\address{
\href{https://faisalhanif.work/}{Faisal-Hanif Portfolio} \\
\href{https://x.com/FaisalHanif333}{Faisal-Hanif X}
}
\address{
+923148166354 \\ mehrfaisal111@gmail.com \\ Lahore, Pakistan
}
\begin{document}
\begin{rSection}{SUMMARY}
\textbf{Software Engineer} with 3+ years of experience, delivering 10+ successful projects. Full-stack builder across TypeScript, React, React Native, Node.js, and Express, with production experience shipping RESTful APIs, SQL-backed services, and tested (Jest) deployments on AWS. Shipped product features, APIs, and platform infrastructure at 2 companies, from database design through to the deployed UI.
\end{rSection}
\begin{rSection}{EXPERIENCE}
\textbf{Techxelo} \hfill 08/2023 - Present \\
\textit{Software Engineer}  \hfill \textit{Lahore, Pakistan}
\begin{itemize}
\itemsep -3pt {}
\item Designed RESTful APIs with MongoDB and MySQL, generating over \$3000+ in project revenue.
\item Architected 5+ full-stack applications with React.js, Next.js, and Node.js, driving client acquisition.
\item Boosted application performance by 20\% through code refactoring and caching in Soledeck and Smart Gallery.
\end{itemize}
\textbf{Viral Square} \hfill 06/2022 - 06/2023 \\
\textit{React Native Developer} \hfill \textit{Lahore, Pakistan}
\begin{itemize}
\itemsep -3pt {}
\item Orchestrated complex Expo projects in React Native, increasing productivity by 10\% through enhancements.
\item Engineered 4+ innovative mobile applications, significantly boosting user engagement and satisfaction.
\item Utilized React Native, Redux, RESTful API, Figma, and Firebase for Expo apps to enhance performance.
\end{itemize}
\end{rSection}
\begin{rSection}{PROJECTS}
\begin{itemize}
\item \textbf{Soledeck} - \textbf{Comprehensive Footwear Marketplace}
\begin{itemize}
\itemsep -3pt {}
\item Built using MERN stack with JWT authentication and GraphQL for seamless user experience. \href{https://soledeckf.vercel.app/}{Site}/\href{https://github.com/FaisalHanif12/Soledeck}{GitHub}
\end{itemize}
\item \textbf{PureBody App} - \textbf{Personalized Fitness Using AI}
\begin{itemize}
\itemsep -3pt {}
\item Built a SaaS platform generating AI diet and workout plans along with integrated AI trainer. \href{https://faisalhanif.work/sass-app.html}{Site}/\href{https://github.com/FaisalHanif12/PureBody}{GitHub}
\end{itemize}
\item \textbf{UHA International} - \textbf{Multi-Sector Enterprise Platform}
\begin{itemize}
\itemsep -3pt {}
\item Built a multi-sector corporate site with AI chatbot, appointment booking and company portfolio. \href{https://uha-international.com/}{Site}/\href{https://github.com/FaisalHanif12/UHA-International}{GitHub}
\end{itemize}
\item \textbf{GitPulse} - \textbf{Bootcamp GitHub Activity Dashboard}
\begin{itemize}
\itemsep -3pt {}
\item Built the Next.js frontend for a cohort dashboard tracking GitHub activity, scores, and alerts. \href{https://gitpulseee.netlify.app/}{Site}/\href{https://github.com/FaisalHanif12/GitPulse}{GitHub}
\end{itemize}
\end{itemize}
\end{rSection}
\begin{rSection}{Skills}
\begin{tabular}{ @{} >{\bfseries}l @{\hspace{6ex}} l }
Languages & TypeScript, JavaScript, Node.js, Express.js, HTML, CSS \\
Frameworks & Node.js, Express.js, React.js, Next.js, React Native, Tailwind CSS \\
Developer Tools & Git/Github, Docker, Postman, Jest, Jira, Claude Code \\
Technical Skills & RESTful APIs, System Design, Deployment, GraphQL, CI/CD \\
Soft Skills & Communication, Creative, Teamwork, Troubleshooting, Problem solving \\
Databases & MongoDB, MySQL, PostgreSQL, Firebase \\
\end{tabular}
\end{rSection}
\begin{rSection}{Education}
{\bf Bachelor of Science in Software Engineering}, (UMT) \hfill {2020 - 2024}
\begin{itemize}
\itemsep -3pt {}
\item Pursued a comprehensive and rigorous education in software engineering.
\end{itemize}
\end{rSection}
\end{document}
```

---

## Job 2 of 4 — Roo — Senior Software Engineer, Frontend Platform

- **company:** Roo
- **company_domain:** roo.vet
- **role:** Senior Software Engineer, Frontend Platform
- **job_url:** https://job-boards.greenhouse.io/roo/jobs/5391625008
- **posted:** first_published 2026-08-14T13:27:53-04:00 (2 days old, Roo's own Greenhouse board)
- **fit score:** 82/100
- **low_competition score:** 62/100 (AUTH_REGIONAL -10 penalty applied)
- **applicant_count:** not published
- **AUTH classification:** AUTH_REGIONAL, same reasoning as job 1 (generic "Remote" location field, no explicit country restriction found, but US-metro salary tiers imply US-centric hiring). Treated as REGIONAL, not OPEN.
- **pay:** USD, tiered (Tier 1 "$170,000-$210,000" down to Tier 5 "$125,000-$165,000")
- **cv_compiled:** yes, 1 page, verified with pdflatex twice
- **cv_library_file:** resumes/roo-frontend-platform-engineer.tex (origin: FRESH from cv/cv-master.tex)
- **stage2_status:** not_submitted
- **note:** Second Roo role in today's packet (2 of 3 allowed per company). Requires React, TypeScript, React Native/mobile experience, Figma proficiency, and AI-assisted development tooling (Cursor/Claude). Faisal already uses Claude Code and has Figma experience documented in the Viral Square bullet — no fabricated skills added.

### Cover letter (131 words)

Roo's frontend platform work, building a design system and putting AI-assisted development practices into a small, fast-moving engineering team, is close to what excites me most about this role. I have three years of experience building production interfaces in React and TypeScript, and at Viral Square I worked directly from Figma files to ship React Native apps in Expo, including component work reused across projects. I already use Claude Code in my daily workflow, so building AI-assisted tooling into a team's practice is not new territory. My production experience is concentrated on React web and React Native rather than formal design-systems tooling specifically, which I would be learning on the job, but the underlying frontend engineering is exactly what I do. I would welcome the chance to talk through the role.

### Screening answers

| Field | Answer |
|---|---|
| Full name | M Faisal Hanif |
| Email | mehrfaisal111@gmail.com |
| Phone | +923148166354 |
| Location | Lahore, Pakistan |
| LinkedIn | https://www.linkedin.com/in/faisal-frontend-developer/ |
| GitHub | https://github.com/FaisalHanif12 |
| Portfolio | https://faisalhanif.work |
| Work authorization | Not a US/local resident; role is remote and contractor-friendly. No sponsorship required for a remote engagement. |
| Do you require sponsorship | No sponsorship needed for a remote role. |
| Willing to relocate | No, remote only |
| Notice period | 2 weeks |
| Earliest start | 2 weeks from offer |
| Years of experience | 3+ |
| Current employer | Techxelo |
| Current title | Software Engineer |
| Degree | BS Software Engineering, University of Management and Technology (UMT), 2020-2024 |
| Salary expectation | Tier 5 band applies (remote, outside US metro): $138,000 USD/year, lower-middle of the stated $125,000-$165,000 Tier 5 range |
| Pronouns | He/Him |
| Gender | Male |
| Race / ethnicity | Asian (Not Hispanic or Latino) |
| Veteran status | I am not a protected veteran |
| Disability status | I do not wish to answer |

### Full tailored CV LaTeX

```latex
\documentclass{resume}
\usepackage[left=0.4 in,top=0.4in,right=0.4 in,bottom=0.4in]{geometry}
\usepackage{hyperref}
\newcommand{\tab}[1]{\hspace{.2667\textwidth}\rlap{#1}}
\newcommand{\itab}[1]{\hspace{0em}\rlap{#1}}
\name{M Faisal Hanif}
\address{
\href{https://www.linkedin.com/in/faisal-frontend-developer/}{Faisal-Hanif LinkedIn} \\
\href{https://github.com/FaisalHanif12}{Faisal-Hanif GitHub}
}
\address{
\href{https://faisalhanif.work/}{Faisal-Hanif Portfolio} \\
\href{https://x.com/FaisalHanif333}{Faisal-Hanif X}
}
\address{
+923148166354 \\ mehrfaisal111@gmail.com \\ Lahore, Pakistan
}
\begin{document}
\begin{rSection}{SUMMARY}
\textbf{Software Engineer} with 3+ years of experience, delivering 10+ successful projects. Frontend-focused builder across React, TypeScript, and React Native, with hands-on experience turning Figma designs into production UI and using AI-assisted tooling to move faster. Shipped product features and reusable UI systems at 2 companies, from design handoff through to deployment.
\end{rSection}
\begin{rSection}{EXPERIENCE}
\textbf{Techxelo} \hfill 08/2023 - Present \\
\textit{Software Engineer}  \hfill \textit{Lahore, Pakistan}
\begin{itemize}
\itemsep -3pt {}
\item Architected 5+ full-stack applications with React.js, Next.js, and Node.js, driving client acquisition.
\item Boosted application performance by 20\% through code refactoring and caching in Soledeck and Smart Gallery.
\item Designed RESTful APIs with MongoDB and MySQL, generating over \$3000+ in project revenue.
\end{itemize}
\textbf{Viral Square} \hfill 06/2022 - 06/2023 \\
\textit{React Native Developer} \hfill \textit{Lahore, Pakistan}
\begin{itemize}
\itemsep -3pt {}
\item Utilized React Native, Redux, RESTful API, Figma, and Firebase for Expo apps to enhance performance.
\item Orchestrated complex Expo projects in React Native, increasing productivity by 10\% through enhancements.
\item Engineered 4+ innovative mobile applications, significantly boosting user engagement and satisfaction.
\end{itemize}
\end{rSection}
\begin{rSection}{PROJECTS}
\begin{itemize}
\item \textbf{PureBody App} - \textbf{Personalized Fitness Using AI}
\begin{itemize}
\itemsep -3pt {}
\item Built a SaaS platform generating AI diet and workout plans along with integrated AI trainer. \href{https://faisalhanif.work/sass-app.html}{Site}/\href{https://github.com/FaisalHanif12/PureBody}{GitHub}
\end{itemize}
\item \textbf{Soledeck} - \textbf{Comprehensive Footwear Marketplace}
\begin{itemize}
\itemsep -3pt {}
\item Built using MERN stack with JWT authentication and GraphQL for seamless user experience. \href{https://soledeckf.vercel.app/}{Site}/\href{https://github.com/FaisalHanif12/Soledeck}{GitHub}
\end{itemize}
\item \textbf{Financial Fusion} - \textbf{Your Digital Ledger for Life}
\begin{itemize}
\itemsep -3pt {}
\item Engineered a React Native app for solo users to manage their personal finance ledger and transactions.\href{https://financial-fusion.netlify.app/}{Site}/\href{https://github.com/FaisalHanif12/Dosnexa}{GitHub}
\end{itemize}
\item \textbf{GitPulse} - \textbf{Bootcamp GitHub Activity Dashboard}
\begin{itemize}
\itemsep -3pt {}
\item Built the Next.js frontend for a cohort dashboard tracking GitHub activity, scores, and alerts. \href{https://gitpulseee.netlify.app/}{Site}/\href{https://github.com/FaisalHanif12/GitPulse}{GitHub}
\end{itemize}
\end{itemize}
\end{rSection}
\begin{rSection}{Skills}
\begin{tabular}{ @{} >{\bfseries}l @{\hspace{6ex}} l }
Languages & TypeScript, JavaScript, Node.js, Express.js, HTML, CSS \\
Frameworks & React.js, Next.js, React Native, Tailwind CSS, Node.js, Express.js \\
Developer Tools & Claude Code, Git/Github, Jest, Postman, Docker, Jira \\
Technical Skills & RESTful APIs, System Design, Deployment, GraphQL, CI/CD \\
Soft Skills & Communication, Creative, Teamwork, Troubleshooting, Problem solving \\
Databases & MongoDB, MySQL, PostgreSQL, Firebase \\
\end{tabular}
\end{rSection}
\begin{rSection}{Education}
{\bf Bachelor of Science in Software Engineering}, (UMT) \hfill {2020 - 2024}
\begin{itemize}
\itemsep -3pt {}
\item Pursued a comprehensive and rigorous education in software engineering.
\end{itemize}
\end{rSection}
\end{document}
```

---

## Job 3 of 4 — ClassWallet — Technical Lead, Full Stack Engineer

- **company:** ClassWallet
- **company_domain:** classwallet.com
- **role:** Technical Lead, Full Stack Engineer
- **job_url:** https://apply.workable.com/classwallet/j/6C148EAD45/
- **posted:** published_on 2026-08-12 (4 days old, ClassWallet's own Workable board)
- **fit score:** 60/100 (docked for the experience-level gap below)
- **low_competition score:** 58/100 (AUTH_REGIONAL -10 penalty applied)
- **applicant_count:** not published
- **AUTH classification:** AUTH_REGIONAL "United States (remote)" — location field states where the role is remote, no explicit citizenship/visa demand found in the text.
- **pay:** not stated in posting; free-text/negotiable answer used
- **cv_compiled:** yes, 1 page, verified with pdflatex twice
- **cv_library_file:** resumes/classwallet-fullstack-engineer.tex (origin: DERIVED from resumes/vanta-fullstack-integrations-platform-engineer.tex, summary block only changed)
- **stage2_status:** not_submitted
- **note:** HONEST STRETCH. Posting asks for "8+ years of professional software engineering experience... with significant depth in backend and platform work" and a "Technical Lead" title. Faisal has 3+ years. Named plainly in the cover letter. Stack overlap is otherwise strong (TypeScript, Node.js, React/Next.js, Postgres/MySQL/MongoDB, AWS/Docker). Description clarifies this is a "hands-on individual contributor role," not people-management, which is why it was not treated as an out-of-scope staff/lead title.

### Cover letter (128 words)

ClassWallet's work sits at an interesting intersection, moving school and government funding through a compliant, auditable platform rather than a generic fintech product. I have three years of full-stack experience across TypeScript, React, Next.js, and Node.js, and at Techxelo I designed RESTful APIs on MongoDB and MySQL that generated real project revenue, plus shipped containerized deployments with Docker. The role asks for eight-plus years and deep platform ownership; I bring three-plus with a track record of shipping full features independently rather than leading a team, so that is a real gap worth naming upfront rather than glossing over. What I can offer is hands-on full-stack delivery on exactly the stack you use, and the ability to ramp quickly. I would welcome the chance to discuss whether that fits.

### Screening answers

| Field | Answer |
|---|---|
| Full name | M Faisal Hanif |
| Email | mehrfaisal111@gmail.com |
| Phone | +923148166354 |
| Location | Lahore, Pakistan |
| LinkedIn | https://www.linkedin.com/in/faisal-frontend-developer/ |
| GitHub | https://github.com/FaisalHanif12 |
| Portfolio | https://faisalhanif.work |
| Work authorization | Not a US resident; role is remote and contractor-friendly. No sponsorship required for a remote engagement. |
| Do you require sponsorship | No sponsorship needed for a remote role. |
| Willing to relocate | No, remote only |
| Notice period | 2 weeks |
| Earliest start | 2 weeks from offer |
| Years of experience | 3+ (posting asks for 8+; flagged honestly in cover letter) |
| Current employer | Techxelo |
| Current title | Software Engineer |
| Degree | BS Software Engineering, University of Management and Technology (UMT), 2020-2024 |
| Salary expectation | No range stated; US role: 55000 USD per year, per standing salary policy |
| Pronouns | He/Him |
| Gender | Male |
| Race / ethnicity | Asian (Not Hispanic or Latino) |
| Veteran status | I am not a protected veteran |
| Disability status | I do not wish to answer |

### Full tailored CV LaTeX

```latex
\documentclass{resume}
\usepackage[left=0.4 in,top=0.4in,right=0.4 in,bottom=0.4in]{geometry}
\usepackage{hyperref}
\newcommand{\tab}[1]{\hspace{.2667\textwidth}\rlap{#1}}
\newcommand{\itab}[1]{\hspace{0em}\rlap{#1}}
\name{M Faisal Hanif}
\address{
\href{https://www.linkedin.com/in/faisal-frontend-developer/}{Faisal-Hanif LinkedIn} \\
\href{https://github.com/FaisalHanif12}{Faisal-Hanif GitHub}
}
\address{
\href{https://faisalhanif.work/}{Faisal-Hanif Portfolio} \\
\href{https://x.com/FaisalHanif333}{Faisal-Hanif X}
}
\address{
+923148166354 \\ mehrfaisal111@gmail.com \\ Lahore, Pakistan
}
\begin{document}
\begin{rSection}{SUMMARY}
\textbf{Software Engineer} with 3+ years of experience, delivering 10+ successful projects. Full-stack engineer across TypeScript, React, Next.js, and Node.js, building RESTful services on MongoDB, MySQL, and PostgreSQL and deploying with Docker on AWS. Shipped product features, APIs, and platform infrastructure at 2 companies, from database design through to the deployed UI.
\end{rSection}
\begin{rSection}{EXPERIENCE}
\textbf{Techxelo} \hfill 08/2023 - Present \\
\textit{Software Engineer}  \hfill \textit{Lahore, Pakistan}
\begin{itemize}
\itemsep -3pt {}
\item Designed RESTful APIs with MongoDB and MySQL, generating over \$3000+ in project revenue.
\item Architected 5+ full-stack applications with React.js, Next.js, and Node.js, driving client acquisition.
\item Boosted application performance by 20\% through code refactoring and caching in Soledeck and Smart Gallery.
\end{itemize}
\textbf{Viral Square} \hfill 06/2022 - 06/2023 \\
\textit{React Native Developer} \hfill \textit{Lahore, Pakistan}
\begin{itemize}
\itemsep -3pt {}
\item Orchestrated complex Expo projects in React Native, increasing productivity by 10\% through enhancements.
\item Engineered 4+ innovative mobile applications, significantly boosting user engagement and satisfaction.
\item Utilized React Native, Redux, RESTful API, Figma, and Firebase for Expo apps to enhance performance.
\end{itemize}
\end{rSection}
\begin{rSection}{PROJECTS}
\begin{itemize}
\item \textbf{Soledeck} - \textbf{Comprehensive Footwear Marketplace}
\begin{itemize}
\itemsep -3pt {}
\item Built using MERN stack with JWT authentication and GraphQL for seamless user experience. \href{https://soledeckf.vercel.app/}{Site}/\href{https://github.com/FaisalHanif12/Soledeck}{GitHub}
\end{itemize}
\item \textbf{PureBody App} - \textbf{Personalized Fitness Using AI}
\begin{itemize}
\itemsep -3pt {}
\item Built a SaaS platform generating AI diet and workout plans along with integrated AI trainer. \href{https://faisalhanif.work/sass-app.html}{Site}/\href{https://github.com/FaisalHanif12/PureBody}{GitHub}
\end{itemize}
\item \textbf{UHA International} - \textbf{Multi-Sector Enterprise Platform}
\begin{itemize}
\itemsep -3pt {}
\item Built a multi-sector corporate site with AI chatbot, appointment booking and company portfolio. \href{https://uha-international.com/}{Site}/\href{https://github.com/FaisalHanif12/UHA-International}{GitHub}
\end{itemize}
\item \textbf{GitPulse} - \textbf{Bootcamp GitHub Activity Dashboard}
\begin{itemize}
\itemsep -3pt {}
\item Built the Next.js frontend for a cohort dashboard tracking GitHub activity, scores, and alerts. \href{https://gitpulseee.netlify.app/}{Site}/\href{https://github.com/FaisalHanif12/GitPulse}{GitHub}
\end{itemize}
\end{itemize}
\end{rSection}
\begin{rSection}{Skills}
\begin{tabular}{ @{} >{\bfseries}l @{\hspace{6ex}} l }
Languages & TypeScript, JavaScript, Node.js, Express.js, HTML, CSS \\
Frameworks & Node.js, Express.js, React.js, Next.js, React Native, Tailwind CSS \\
Developer Tools & Git/Github, Docker, Postman, Jest, Jira, Claude Code \\
Technical Skills & RESTful APIs, System Design, Deployment, GraphQL, CI/CD \\
Soft Skills & Communication, Creative, Teamwork, Troubleshooting, Problem solving \\
Databases & MongoDB, MySQL, PostgreSQL, Firebase \\
\end{tabular}
\end{rSection}
\begin{rSection}{Education}
{\bf Bachelor of Science in Software Engineering}, (UMT) \hfill {2020 - 2024}
\begin{itemize}
\itemsep -3pt {}
\item Pursued a comprehensive and rigorous education in software engineering.
\end{itemize}
\end{rSection}
\end{document}
```

---

## Job 4 of 4 — Revion — Founding Engineer

- **company:** Revion
- **company_domain:** revion.inc
- **role:** Founding Engineer
- **job_url:** https://www.ycombinator.com/companies/revion/jobs/4ahU7yI-founding-engineer
- **posted:** undated on the YC board; corroborated fresh by YC Winter 2026 (W26) batch, company founded 2025
- **fit score:** 40/100 (real stretch, see gaps below)
- **low_competition score:** 70/100 (AUTH_REGIONAL -10 penalty applied; small YC W26 team, unusual "Founding Engineer" title)
- **applicant_count:** not published
- **AUTH classification:** AUTH_REGIONAL "Remote (GB)" — the posting states "London, England, GB / Remote (GB)", meaning the remote work must be UK-based. HQ is listed as New York City, NY (US, on the allow-list) but the role itself is UK-region-restricted. No explicit citizenship/visa demand found beyond the regional framing, so REGIONAL rather than BLOCKED.
- **pay:** £90K - £140K GBP + 0.01%-0.50% equity (GBP is an allowed currency)
- **cv_compiled:** yes, 1 page, verified with pdflatex twice
- **cv_library_file:** resumes/revion-founding-engineer.tex (origin: FRESH from cv/cv-master.tex)
- **stage2_status:** not_submitted
- **note:** HONEST STRETCH, flagged prominently. The posting requires "Strong in Python or Go, with hands-on production experience" plus "production-grade voice agents" and AI/ML application experience, none of which Faisal has. Overlap on the named core stack (React, TypeScript, Node.js against a 6-item list including Python/Go/ML/voice-agents) sits at exactly the half-or-more line. Faisal has shipped LLM-integrated features (PureBody AI trainer, UHA International AI chatbot) but not Python/Go or voice-agent work specifically. Included because it clears the stack-overlap floor and the gap is named plainly in the cover letter, per the rules — Faisal should weigh this one carefully given how real the gap is.

### Cover letter (133 words)

Revion is building intelligence for automotive operations, including production voice agents, a sharper and more concrete problem than most "AI agent" postings I read. I have three years of full-stack experience in React, TypeScript, and Node.js, and I have shipped LLM-integrated features before, including an AI diet and workout planner with an integrated AI trainer and an AI chatbot on a multi-sector enterprise site. The honest gap: the role also wants production experience in Python or Go, and I work in JavaScript and TypeScript rather than either, so the backend and voice-agent depth you describe would be new ground for me, not a refresh. What I bring is fast, reliable full-stack delivery and real shipped AI-integration work. I would welcome a conversation to see if that combination is useful to a founding team.

### Screening answers

| Field | Answer |
|---|---|
| Full name | M Faisal Hanif |
| Email | mehrfaisal111@gmail.com |
| Phone | +923148166354 |
| Location | Lahore, Pakistan |
| LinkedIn | https://www.linkedin.com/in/faisal-frontend-developer/ |
| GitHub | https://github.com/FaisalHanif12 |
| Portfolio | https://faisalhanif.work |
| Work authorization | Not UK-resident; posting restricts to Remote (GB). Flagged to Faisal as a real risk — he should confirm this before applying. |
| Do you require sponsorship | No sponsorship needed for a remote engagement, but the role is explicitly UK-region-restricted; this may be a hard blocker in practice. |
| Willing to relocate | No, remote only |
| Notice period | 2 weeks |
| Earliest start | 2 weeks from offer |
| Years of experience | 3+ |
| Current employer | Techxelo |
| Current title | Software Engineer |
| Degree | BS Software Engineering, University of Management and Technology (UMT), 2020-2024 |
| Salary expectation | Inside stated range, lower-middle: £105,000 GBP/year (range is £90K-£140K GBP) |
| Pronouns | He/Him |
| Gender | Male |
| Race / ethnicity | Asian (Not Hispanic or Latino) |
| Veteran status | I am not a protected veteran |
| Disability status | I do not wish to answer |

### Full tailored CV LaTeX

```latex
\documentclass{resume}
\usepackage[left=0.4 in,top=0.4in,right=0.4 in,bottom=0.4in]{geometry}
\usepackage{hyperref}
\newcommand{\tab}[1]{\hspace{.2667\textwidth}\rlap{#1}}
\newcommand{\itab}[1]{\hspace{0em}\rlap{#1}}
\name{M Faisal Hanif}
\address{
\href{https://www.linkedin.com/in/faisal-frontend-developer/}{Faisal-Hanif LinkedIn} \\
\href{https://github.com/FaisalHanif12}{Faisal-Hanif GitHub}
}
\address{
\href{https://faisalhanif.work/}{Faisal-Hanif Portfolio} \\
\href{https://x.com/FaisalHanif333}{Faisal-Hanif X}
}
\address{
+923148166354 \\ mehrfaisal111@gmail.com \\ Lahore, Pakistan
}
\begin{document}
\begin{rSection}{SUMMARY}
\textbf{Software Engineer} with 3+ years of experience, delivering 10+ successful projects. Full-stack builder across TypeScript, React, and Node.js, with hands-on experience shipping AI-powered product features and LLM-driven interfaces end to end. Shipped product features, APIs, and platform infrastructure at 2 companies, from database design through to the deployed UI.
\end{rSection}
\begin{rSection}{EXPERIENCE}
\textbf{Techxelo} \hfill 08/2023 - Present \\
\textit{Software Engineer}  \hfill \textit{Lahore, Pakistan}
\begin{itemize}
\itemsep -3pt {}
\item Architected 5+ full-stack applications with React.js, Next.js, and Node.js, driving client acquisition.
\item Designed RESTful APIs with MongoDB and MySQL, generating over \$3000+ in project revenue.
\item Boosted application performance by 20\% through code refactoring and caching in Soledeck and Smart Gallery.
\end{itemize}
\textbf{Viral Square} \hfill 06/2022 - 06/2023 \\
\textit{React Native Developer} \hfill \textit{Lahore, Pakistan}
\begin{itemize}
\itemsep -3pt {}
\item Orchestrated complex Expo projects in React Native, increasing productivity by 10\% through enhancements.
\item Engineered 4+ innovative mobile applications, significantly boosting user engagement and satisfaction.
\item Utilized React Native, Redux, RESTful API, Figma, and Firebase for Expo apps to enhance performance.
\end{itemize}
\end{rSection}
\begin{rSection}{PROJECTS}
\begin{itemize}
\item \textbf{PureBody App} - \textbf{Personalized Fitness Using AI}
\begin{itemize}
\itemsep -3pt {}
\item Built a SaaS platform generating AI diet and workout plans along with integrated AI trainer. \href{https://faisalhanif.work/sass-app.html}{Site}/\href{https://github.com/FaisalHanif12/PureBody}{GitHub}
\end{itemize}
\item \textbf{UHA International} - \textbf{Multi-Sector Enterprise Platform}
\begin{itemize}
\itemsep -3pt {}
\item Built a multi-sector corporate site with AI chatbot, appointment booking and company portfolio. \href{https://uha-international.com/}{Site}/\href{https://github.com/FaisalHanif12/UHA-International}{GitHub}
\end{itemize}
\item \textbf{Soledeck} - \textbf{Comprehensive Footwear Marketplace}
\begin{itemize}
\itemsep -3pt {}
\item Built using MERN stack with JWT authentication and GraphQL for seamless user experience. \href{https://soledeckf.vercel.app/}{Site}/\href{https://github.com/FaisalHanif12/Soledeck}{GitHub}
\end{itemize}
\item \textbf{GitPulse} - \textbf{Bootcamp GitHub Activity Dashboard}
\begin{itemize}
\itemsep -3pt {}
\item Built the Next.js frontend for a cohort dashboard tracking GitHub activity, scores, and alerts. \href{https://gitpulseee.netlify.app/}{Site}/\href{https://github.com/FaisalHanif12/GitPulse}{GitHub}
\end{itemize}
\end{itemize}
\end{rSection}
\begin{rSection}{Skills}
\begin{tabular}{ @{} >{\bfseries}l @{\hspace{6ex}} l }
Languages & TypeScript, JavaScript, Node.js, Express.js, HTML, CSS \\
Frameworks & React.js, Next.js, Node.js, Express.js, React Native, Tailwind CSS \\
Developer Tools & Git/Github, Claude Code, Docker, Postman, Jest, Jira \\
Technical Skills & RESTful APIs, System Design, Deployment, GraphQL, CI/CD \\
Soft Skills & Communication, Creative, Teamwork, Troubleshooting, Problem solving \\
Databases & MongoDB, MySQL, PostgreSQL, Firebase \\
\end{tabular}
\end{rSection}
\begin{rSection}{Education}
{\bf Bachelor of Science in Software Engineering}, (UMT) \hfill {2020 - 2024}
\begin{itemize}
\itemsep -3pt {}
\item Pursued a comprehensive and rigorous education in software engineering.
\end{itemize}
\end{rSection}
\end{document}
```

---

## Standing reference (repeated per profile, for Stage 2)

- LinkedIn: https://www.linkedin.com/in/faisal-frontend-developer/
- GitHub: https://github.com/FaisalHanif12
- Portfolio: https://faisalhanif.work (no hyphen)
- Contact email on every application: mehrfaisal111@gmail.com (never faisal@faisalhanif.work)
- Race, gender, veteran, pronouns: filled per the standing answers table above on every job. Disability: always "I do not wish to answer".
- The PDF delivered to any employer must be named exactly `M_Faisal_Hanif_CV.pdf` — no company or role name in the filename Stage 2 uploads.
