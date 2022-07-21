\ProvidesClass{uulm-cs-poster}[2022/07/19 non-official LaTeX poster done roughly in the design of the uulm]

\newif\if@uulm@cs@poster@hyper@
\DeclareOption{hyper}{\@uulm@cs@poster@hyper@true}
\DeclareOption{nohyper}{\@uulm@cs@poster@hyper@false}

\newif\if@uulm@cs@poster@enumitem@
\DeclareOption{enumitem}{\@uulm@cs@poster@enumitem@true}
\DeclareOption{noenumitem}{\@uulm@cs@poster@enumitem@false}

\newif\if@uulm@cs@poster@biblatex@
\DeclareOption{biblatex}{\@uulm@cs@poster@biblatex@true}
\DeclareOption{nobiblatex}{\@uulm@cs@poster@biblatex@false}

\newif\if@uulm@cs@poster@default@
\DeclareOption{default}{\@uulm@cs@poster@default@true}
\DeclareOption{nodefault}{\@uulm@cs@poster@default@false}

\DeclareOption{english}{\def\uulm@cs@poster@defaultlang{english}}
\DeclareOption{ngerman}{\def\uulm@cs@poster@defaultlang{ngerman}}

\ExecuteOptions{hyper,enumitem,biblatex,english}
\ProcessOptions*

% ensure the presence of a language
\PassOptionsToPackage{\uulm@cs@poster@defaultlang}{babel}

\LoadClass[oneside]{article}
\newdimen\uulm@margin \uulm@margin2cm
\RequirePackage[margin=\uulm@margin]{geometry} % wellp

\RequirePackage[skip=.5\baselineskip]{parskip}

\RequirePackage{uulm-logo}

\definecolor{black}{HTML}{000000}
\definecolor{uulmlogoblue}{HTML}{89a2b3}
\definecolor{uulmblue}{HTML}{7D9AAA}
\definecolor{uulmaccent}{HTML}{A9A28D}
\definecolor{green}{HTML}{56AA1C}
\definecolor{red}{HTML}{A32638}
\definecolor{orange}{HTML}{DF6D07}
\definecolor{blue}{HTML}{26547C}

\RequirePackage[default]{FiraSans}
\RequirePackage{FiraMono}
\RequirePackage{sansmathfonts}

\RequirePackage[grid]{multicol}

\colorlet{backgroundcolor}{white}

\def\logo#1{\def\@logo{#1}}
\let\@logo\@empty
\def\institute#1{\def\@institute{#1}}
\let\@institute\@empty

\def\and{,\space}% maybe more elaborate with automatic and?
\def\maketitle{\begingroup\leavevmode
\parskip\z@\relax
\vskip\dimexpr-\parskip-\baselineskip-11mm\relax\par
% upper row of icons
\null\parbox[c]{.2\linewidth}{\smash{\@logo}}\hfill\uulmlogo\vskip.75\uulm@margin\vskip-3.5mm\par
\hspace{-\uulm@margin}%
\fboxsep\z@\fcolorbox{red}{red}{
\minipage[b]\paperwidth
\vspace*{.5cm}\@declaredcolor{white}%
\hspace\uulm@margin\fontsize{36pt}{36pt}\textsc{\textbf{\@title}}\par%
\hspace\uulm@margin\LARGE\@author\par%
\vspace*{.5cm}%
\endminipage}\vskip1cm\par\endgroup}

\columnseprule.4pt
\columnsep3em
\def\columnseprulecolor{\color{uulmaccent}}

% TODO: footline at the bottom
% TODO: adapt style from matching document

\def\university#1{\def\@university{#1}}
\let\@university\@empty

\def\footline#1{\def\@footline{#1}}
\def\@footline{\@date\hfill\@institute\hfill\@university}

\def\@thefoot{%
\hskip-\uulm@margin\relax% \vskip\uulm@margin\relax
\fcolorbox{red}{red}{\@declaredcolor{white}\hb@xt@\paperwidth\relax{\hskip\dimexpr\uulm@margin-.6ex\relax\strut\@footline\hskip\dimexpr\uulm@margin+.6ex\relax\null}}%
}

\RequirePackage{titlesec}
\def\belowsecrule{\titlerule[\columnseprule]}
\titleformat\section[hang]
  {\centering\normalfont\bfseries\Large\color{red}}
  {\thesection}{1em}{}[\color{uulmaccent}\belowsecrule]
\titlespacing*\section\z@{2em\@plus1fil\@minus1em}{*1}

\titleformat\subsection
  {\normalfont\bfseries\normalsize\color{red}}
  {\thesection}{1em}{}
\titlespacing*\subsection\z@{*1.5}{*.33}

\titleformat\paragraph[runin]
  {\normalfont\bfseries\normalsize\color{red}}
  {\thesection}{1em}{}
\titlespacing*\paragraph\z@\parskip{1em\@plus.5em\@minus.5em}

\pagestyle{empty}

\RequirePackage{caption}
\DeclareCaptionFont{main}{\color{red}}
\captionsetup{labelfont={main,bf},font={small}}

\linespread{1.1}

\def\sbseries{\fontseries{sb}\selectfont}
\def\textsb#1{\ifmmode\nfss@text{\sbseries#1}\else\hmode@bgroup\text@command{#1}\sbseries \check@icl#1\check@icr\expandafter\egroup\fi}

\if@uulm@cs@poster@hyper@
  \AtEndPreamble{%
    \PassOptionsToPackage{pdfusetitle}{hyperref}%
    \RequirePackage{hyperref}%
    \hypersetup{pdfborder=0 0 0,colorlinks=true,allcolors=uulmaccent}%
    \PassOptionsToPackage{capitalise}{cleveref}%
    \RequirePackage{cleveref}%
  }
\fi

\if@uulm@cs@poster@enumitem@
\PassOptionsToPackage{inline}{enumitem}
\RequirePackage{enumitem}
\RequirePackage{translations}
\RequirePackage{amssymb}
\DeclareTranslationFallback{t-and}{, and\space}
\DeclareTranslation{English}{t-and}{, and\space}
\DeclareTranslation{German}{t-and}{ und\space}
\newlist{inlist}{enumerate*}{1}
\setlist[inlist]{%
  itemjoin={{, }},%
  itemjoin*={{\GetTranslation{t-and}}},%
  label=\roman*),%
  mode=boxed%
}
\setlist[itemize,1]{%
    label=\@declaredcolor{uulmaccent}%
    \scalebox{.8}{$\blacksquare$},%
    nosep,%
    leftmargin=*,%
    topsep=-\parskip%
}
\fi

\if@uulm@cs@poster@default@
  \RequirePackage[T1]{fontenc}
  \RequirePackage[utf8]{inputenc}
  \RequirePackage{babel}

  \PassOptionsToPackage{activate={true,nocompatibility},tracking,expansion,final,babel}{microtype}
  % we want no tracking for the title
  \AtEndPreamble{\preto\@title{\microtypesetup{tracking=false}}}
\fi

\if@uulm@cs@poster@biblatex@
  \RequirePackage{csquotes}
  \RequirePackage{biblatex}
  \RequirePackage{babel}
  \let\finentrypunct\@empty
  \def\uulm@cs@poster@lhook#1{\href{\thefield{url}}{#1}}%
  \DeclareBibliographyDriver{uulm@cs@poster@bibtheme}{%
    \let\@tmp\@empty
    \ifhyperref{\iffieldundef{url}{}{\let\@tmp\uulm@cs@poster@lhook}}\relax
    \@tmp{\usebibmacro{bibindex}%
    \usebibmacro{begentry}%
    \usebibmacro{author/editor}%
    \setunit{\labelnamepunct}\newblock
    \usebibmacro{title}%
    \newblock
    \printtext{\space}% so it will be executed in sync
    \mbox{\textcolor{uulmaccent}{\usebibmacro{date}}}%
    \newblock
    \usebibmacro{finentry}}%
  }%
  \@for\@type:={article,book,booklet,collection,inbook,incollection,inproceedings,manual,misc,online,patent,periodical,proceedings,report,thesis,unpublished,*}\do{\DeclareBibliographyAlias{\@type}{uulm@cs@poster@bibtheme}}%
  \def\bibfont{\tiny}

  \defbibheading{bibliography}[\bibname]{\subsection*{#1}\vspace*{-1.5\p@}}

  \if@uulm@cs@poster@hyper@
    \preto\printbibliography{\hypersetup{allcolors=black}}
  \fi
\fi


\RequirePackage{microtype}

\endinput