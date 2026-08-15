generated_at: 2026-08-15T22:55:16Z

# Stage 1 packet, 15 August 2026

THIN DAY. 3 jobs prepared, not the target of 10. Every rung on the escalation ladder was
run (see the run report in the commit / session log). 1701+ in-field postings were screened
across 47 ATS boards plus two aggregator sweeps and two dedicated discovery-lane subagents
(YC/Work at a Startup/Wellfound, and Hacker News Who is Hiring). The binding constraint today
was the combination of freshness (48h ceiling) with genuine stack fit and a passable auth/
currency classification — most fresh postings within 48h were either staff/senior-only, wrong
pay currency, missing the JS/TS/React/Node stack at the core, or explicitly blocked on work
authorization. No filter was relaxed to reach a higher count.

---

## Job 1 of 3

- **company:** Vanta
- **company_domain:** vanta.com
- **role:** Sr. Backend Software Engineer, Integrations Platform
- **job_url:** https://jobs.ashbyhq.com/vanta/e76ea2d6-a514-458c-87fd-0792e50ae6bf
- **posted:** 2026-08-14T22:41:07Z (Ashby `publishedAt`, confirmed via the board's own posting-api feed) — about 24 hours before this packet was generated
- **fit_score:** 66/100
- **low_competition_score:** 40/100 (AUTH_REGIONAL penalty applied; Vanta is a well-known, well-funded company so this is not a hidden-gem role, but it is posted on their own Ashby board, not visibly cross-posted)
- **applicant_count:** not published
- **auth_classification:** AUTH_REGIONAL — location field reads `Remote U.S.`. No explicit personal work-authorization or citizenship requirement was found in the full posting text; it is a region statement, not a demand about the person. -10 penalty applied to low_competition per the AUTH_REGIONAL rule.
- **pay_currency:** not stated (compensation field empty; "US-based job postings" pay-transparency note refers to other roles on their board, not a number here) — silence is not a rejection
- **stack_gap:** none on the required stack (TypeScript, React, Node.js all confirmed in the posting text). The honest gap is seniority: this reads as a senior/mentoring role and Faisal has 3+ years, not the 5-8 that "senior" usually implies at a company this size. Named in the cover letter.
- **cv_compiled:** yes, 1 page, pdflatex twice, no errors (cosmetic overfull-hbox warnings only)
- **cv_library_file:** resumes/vanta-backend-integrations-platform-engineer.tex
- **cv_origin:** FRESH (tailored from cv/cv-master.tex)
- **stage2_status:** not_submitted

### Tailored CV LaTeX (full source)

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
\textbf{Software Engineer} with 3+ years of experience, delivering 10+ successful projects. Skilled in TypeScript, Node.js, React.js, and RESTful API design. Built backend services and platform integrations at 2 companies, with hands-on experience in authentication, data modeling, and full-stack delivery.
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

### Cover letter

Vanta's Integrations Platform team is solving a genuinely hard problem: normalizing
authentication, lifecycle, and observability across 400+ providers so every new integration
doesn't reinvent the same plumbing. That is the kind of platform work I enjoy most.

I have 3+ years building backend services and APIs with Node.js, TypeScript, and React,
including designing RESTful APIs against MongoDB and MySQL, and building JWT-based
authentication into a full marketplace application end to end. I have also shipped
integration-heavy features connecting third-party APIs and AI services across several
production projects.

One honest gap: the posting reads senior, and my experience is 3+ years rather than the
5-8 your senior engineers typically carry. I would come in ready to execute against a
well-scoped backlog from day one, with room to grow into the mentoring side of the role.

Happy to walk through my API and integrations work in more detail.

(144 words)

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
| Work authorization (US) | No US work authorization. Applying as a remote/contractor-friendly candidate; requires no sponsorship since the role does not require in-country employment |
| Sponsorship required | No sponsorship needed for a remote contract arrangement. If the form insists on in-country employment only, flag to Faisal before submitting |
| Willing to relocate | No, remote only |
| Notice period | 2 weeks |
| Earliest start | 2 weeks from offer |
| Years of experience | 3+ |
| Current employer | Techxelo |
| Current title | Software Engineer |
| Degree | BS Software Engineering, University of Management and Technology (UMT), 2020-2024 |
| Salary expectation | No range published. If free text: "Negotiable, depending on scope and total package." If a number is required for a US role: 55000 USD per year |
| Race / gender / veteran / disability | Leave blank or "prefer not to say" |

---

## Job 2 of 3

- **company:** Vanta
- **company_domain:** vanta.com
- **role:** Sr. Fullstack Software Engineer, Integrations Platform
- **job_url:** https://jobs.ashbyhq.com/vanta/539cb2a8-b704-4f39-af0d-2bee5b529d1d
- **posted:** 2026-08-14T22:41:27Z (Ashby `publishedAt`) — about 24 hours before this packet was generated
- **fit_score:** 68/100
- **low_competition_score:** 40/100 (same AUTH_REGIONAL penalty and reasoning as Job 1)
- **applicant_count:** not published
- **auth_classification:** AUTH_REGIONAL — `Remote U.S.`, no personal authorization requirement found in the text
- **pay_currency:** not stated
- **stack_gap:** none on required stack (TypeScript, React, Node.js confirmed). Same seniority gap as Job 1, named in the letter.
- **cv_compiled:** yes, 1 page, pdflatex twice, no errors
- **cv_library_file:** resumes/vanta-fullstack-integrations-platform-engineer.tex
- **cv_origin:** DERIVED from resumes/vanta-backend-integrations-platform-engineer.tex (same company, same archetype family, only the SUMMARY block changed to a full-stack framing; experience, projects and skills sections are identical, since they were already fitted to this stack and this company)
- **stage2_status:** not_submitted

**Note for Faisal:** this is a second role at the same company as Job 1 (Vanta). Both are
real, distinct, currently-open postings on Vanta's own board (backend-leaning vs
full-stack-leaning). Applying to both is within the "at most three roles per company" rule.
If you would rather apply to only one, the full-stack one probably suits your actual
day-to-day work better; the backend one leans more specialized.

### Tailored CV LaTeX (full source)

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
\textbf{Software Engineer} with 3+ years of experience, delivering 10+ successful projects. Skilled across the stack in TypeScript, React.js, Next.js, and Node.js. Shipped product features, APIs, and platform infrastructure at 2 companies, from database design through to the deployed UI.
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

### Cover letter

Vanta's Integrations Platform team owns the plumbing behind 400+ cloud, identity, and HRIS
connectors, and is building shared primitives so new integrations stop reinventing
authentication and observability from scratch. That kind of platform thinking, building the
tool that lets the next feature ship faster, is what I look for in a role.

I have 3+ years shipping full-stack products with TypeScript, React, Next.js, and Node.js,
from database schema through to the deployed UI. I built a full marketplace app (Soledeck)
with JWT authentication and a GraphQL API layer, and have integrated third-party APIs and
AI services into several production apps across 2 companies.

Honest gap: this posting reads senior, and my experience is 3+ years rather than the 5-8
your senior engineers usually carry. I would be productive quickly on well-defined work,
with room to grow into the broader technical-direction side of the role.

Glad to share code or walk through the projects.

(148 words)

### Screening answers

Same as Job 1 (identical standing answers; this is the same candidate applying to a second
role at the same company).

| Field | Answer |
|---|---|
| Full name | M Faisal Hanif |
| Email | mehrfaisal111@gmail.com |
| Phone | +923148166354 |
| Location | Lahore, Pakistan |
| LinkedIn | https://www.linkedin.com/in/faisal-frontend-developer/ |
| GitHub | https://github.com/FaisalHanif12 |
| Portfolio | https://faisalhanif.work |
| Work authorization (US) | No US work authorization. Applying as a remote/contractor-friendly candidate |
| Sponsorship required | No sponsorship needed for a remote contract arrangement |
| Willing to relocate | No, remote only |
| Notice period | 2 weeks |
| Earliest start | 2 weeks from offer |
| Years of experience | 3+ |
| Current employer | Techxelo |
| Current title | Software Engineer |
| Degree | BS Software Engineering, University of Management and Technology (UMT), 2020-2024 |
| Salary expectation | No range published. If free text: "Negotiable, depending on scope and total package." If a number is required: 55000 USD per year |
| Race / gender / veteran / disability | Leave blank or "prefer not to say" |

---

## Job 3 of 3

- **company:** Auditdata
- **company_domain:** auditdata.com
- **role:** Full-Stack Software Engineer (React Native/React/.Net)
- **job_url:** https://himalayas.app/companies/auditdata/jobs/full-stack-software-engineer-react-native-react-net
- **posted:** 2026-08-15 (confirmed by direct read of the live posting; same-day)
- **fit_score:** 52/100 (real stack gap on the .NET/desktop side, see below)
- **low_competition_score:** 65/100 (own-board style posting, mixed and unusual stack requirement that filters out generalist applicants, lesser-known company — hearing-care/audiology technology, not a recognizable consumer brand)
- **applicant_count:** not published
- **auth_classification:** AUTH_OPEN — posting states "Open to candidates from all countries." No penalty.
- **pay_currency:** not stated
- **stack_gap:** REAL AND MATERIAL. The posting's required stack is React, TypeScript, Vite, React Native, Expo **and** C#, .NET 8-10, .NET Framework 4.8, ASP.NET Core, Entity Framework Core, WPF/XAML, Azure SQL. Faisal has the React/React Native/Expo/TypeScript half. He has never worked in C#/.NET/WPF, and per his standing rule those must never appear on the CV. Named plainly in the cover letter, not talked around.
- **cv_compiled:** yes, 1 page, pdflatex twice, no errors
- **cv_library_file:** resumes/auditdata-fullstack-react-native-engineer.tex
- **cv_origin:** FRESH (tailored from cv/cv-master.tex)
- **stage2_status:** not_submitted

**Note for Faisal:** this is the honest stretch of the three. Roughly half the required
stack (the .NET/WPF desktop half) is not something you have. If the role is genuinely
split so the React/React Native side can stand alone, or the company is open to someone
growing into .NET, it's worth a shot given how open the auth and geography are. If .NET is
a day-one requirement, you may want to skip this one — your call, the letter names the gap
so nobody is misled either way.

### Tailored CV LaTeX (full source)

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
\textbf{Software Engineer} with 3+ years of experience, delivering 10+ successful projects. Skilled in React Native, Expo, and React.js for cross-platform mobile and web delivery. Shipped consumer-facing apps at 2 companies, with hands-on experience in state management, API integration, and performance tuning.
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
\item \textbf{Financial Fusion} - \textbf{Your Digital Ledger for Life}
\begin{itemize}
\itemsep -3pt {}
\item Engineered a React Native app for solo users to manage their personal finance ledger and transactions.\href{https://financial-fusion.netlify.app/}{Site}/\href{https://github.com/FaisalHanif12/Dosnexa}{GitHub}
\end{itemize}
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
\item \textbf{UHA International} - \textbf{Multi-Sector Enterprise Platform}
\begin{itemize}
\itemsep -3pt {}
\item Built a multi-sector corporate site with AI chatbot, appointment booking and company portfolio. \href{https://uha-international.com/}{Site}/\href{https://github.com/FaisalHanif12/UHA-International}{GitHub}
\end{itemize}
\end{itemize}
\end{rSection}
\begin{rSection}{Skills}
\begin{tabular}{ @{} >{\bfseries}l @{\hspace{6ex}} l }
Languages & JavaScript, TypeScript, Node.js, Express.js, HTML, CSS \\
Frameworks & React Native, React.js, Next.js, Express.js, Node.js, Tailwind CSS \\
Developer Tools & Git/Github, Docker, Postman, Jest, Jira, Claude Code \\
Technical Skills & Deployment, System Design, RESTful APIs, GraphQL, CI/CD \\
Soft Skills & Communication, Creative, Teamwork, Troubleshooting, Problem solving \\
Databases & MySQL, MongoDB, PostgreSQL, Firebase \\
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

### Cover letter

Auditdata builds the software audiology clinics actually run on day to day, which is a
nice contrast to consumer apps where usage is optional. Clinical tools have to just work.

I have 3+ years building cross-platform apps with React Native and Expo, and web apps
with React.js and Next.js, across 2 companies. At Viral Square I shipped 4+ React
Native/Expo apps end to end, and at Techxelo I have built full-stack products including a
marketplace app with JWT authentication and a GraphQL API layer.

Honest gap: the role also wants .NET/C# and WPF for the desktop side, which is not in my
stack. I have not worked in .NET. If the React Native and React portions of the role can
stand on their own, or if the .NET side is one I could grow into, I would like to talk. If
.NET is required from day one, I understand if this is not a fit.

Thanks for considering me.

(150 words)

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
| Work authorization | Open to candidates from all countries per the posting; no local work authorization held or required in this arrangement |
| Sponsorship required | No sponsorship needed for a remote contract/worldwide-hire arrangement |
| Willing to relocate | No, remote only |
| Notice period | 2 weeks |
| Earliest start | 2 weeks from offer |
| Years of experience | 3+ |
| Current employer | Techxelo |
| Current title | Software Engineer |
| Degree | BS Software Engineering, University of Management and Technology (UMT), 2020-2024 |
| Salary expectation | No range published, company HQ/country not firmly established from the posting. If free text: "Negotiable, depending on scope and total package." If a number is required and no clear US/UK/EU designation appears on the form, default to the hourly-contract policy: 30 USD per hour |
| Race / gender / veteran / disability | Leave blank or "prefer not to say" |

---

## Standing profile data carried into every application above

- LinkedIn: https://www.linkedin.com/in/faisal-frontend-developer/
- GitHub: https://github.com/FaisalHanif12
- Portfolio: https://faisalhanif.work (no hyphen)
- Contact email on every application: mehrfaisal111@gmail.com (deliberate — see
  state/job-application-profile.md, "EMAIL ADDRESS")
- Race, gender, veteran, disability fields: leave blank or "prefer not to say" on every form,
  Stage 2 must never fill these in on Faisal's behalf
- None of these three companies appear in any founder-outreach / do-not-contact record, so no
  "already emailed" flag applies to any of them
