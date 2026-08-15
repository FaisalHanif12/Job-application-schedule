%% resume.cls - minimal reconstruction of the classic one-page resume class
%% Provides: \name, \address (repeatable), rSection environment
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/08/07 v1.0 Resume class]

\LoadClass[11pt,letterpaper]{article}

\usepackage[parfill]{parskip}
\usepackage{array}
\usepackage{ifthen}

\pagestyle{empty}

%% ---- sizing / spacing knobs -------------------------------------------
\def\namesize{\huge}
\def\addressskip{\smallskip}
\def\sectionlineskip{\medskip}
\def\nameskip{\bigskip}
\def\sectionskip{\medskip}
\def\addressSep{$\diamond$}

%% ---- name --------------------------------------------------------------
\def\name#1{\def\@name{#1}}
\def\@name{}

%% ---- addresses: collect up to three lines, in the order given ----------
\newcount\@addresscount
\@addresscount=0
\let\@addressone\relax
\let\@addresstwo\relax
\let\@addressthree\relax

\def\address#1{%
  \advance\@addresscount by 1
  \ifnum\@addresscount=1 \gdef\@addressone{#1}\fi
  \ifnum\@addresscount=2 \gdef\@addresstwo{#1}\fi
  \ifnum\@addresscount=3 \gdef\@addressthree{#1}\fi
}

\def\printaddress#1{%
  \begingroup
    \def\\{\addressSep\ }%
    \centerline{#1}%
  \endgroup
  \par
  \addressskip
}

\def\printname{%
  \begingroup
    \hfil{\MakeUppercase{\namesize\bf \@name}}\hfil
    \nameskip\break
  \endgroup
}

%% ---- emit header at \begin{document} -----------------------------------
\let\ori@document=\document
\renewcommand{\document}{%
  \ori@document
  \printname
  \ifx\@addressone\relax\else\printaddress{\@addressone}\fi
  \ifx\@addresstwo\relax\else\printaddress{\@addresstwo}\fi
  \ifx\@addressthree\relax\else\printaddress{\@addressthree}\fi
}

%% ---- section environment ------------------------------------------------
\newenvironment{rSection}[1]{%
  \sectionskip
  \MakeUppercase{\bf #1}%
  \sectionlineskip
  \hrule
  \begin{list}{}{\setlength{\leftmargin}{1.5em}}%
  \item[]
}{%
  \end{list}
}

\newenvironment{rSubsection}[4]{%
  {\bf #1} \hfill {#2}%
  \ifthenelse{\equal{#3}{}}{}{\\ \textit{#3} \hfill \textit{#4}}%
  \smallskip
  \begin{list}{$\cdot$}{\leftmargin=0em}%
  \itemsep -0.5em \vspace{-0.5em}
}{%
  \end{list}
  \vspace{0.5em}
}
