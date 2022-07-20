\ProvidesClass{uulm-cs-poster}[2022/07/19 non-official LaTeX poster done roughly in the design of the uulm]

\LoadClass[oneside]{article}
\newdimen\uulm@margin \uulm@margin2cm
\RequirePackage[margin=\uulm@margin]{geometry} % wellp

\RequirePackage[skip=.5\baselineskip]{parskip}

% TODO do not use parskpik; TODO: rect?
% \parindent\z@
% \parskip\baselineskip
% \parfillskip.3\linewidth\@minus.3\linewidth % don't fill the last line
% \emergencystretch.5\textwidth

\RequirePackage{tikz}
\RequirePackage{uulm-logo}
\RequirePackage{microtype}

\definecolor{black}{HTML}{000000}
\definecolor{uulmlogoblue}{HTML}{89a2b3}
\definecolor{uulmblue}{HTML}{7D9AAA}
\definecolor{uulmaccent}{HTML}{A9A28D}
\definecolor{green}{HTML}{56AA1C}
\definecolor{red}{HTML}{A32638}
\definecolor{orange}{HTML}{DF6D07}
\definecolor{blue}{HTML}{26547C}

\RequirePackage[default]{FiraSans}
\RequirePackage{multicol}

\colorlet{backgroundcolor}{white}

\def\logo#1{\def\@logo{#1}}
\let\@logo\@empty
\def\institute#1{\def\@institute{#1}}
\let\@institute\@empty

% TODO: SP logo
\def\maketitle{\begingroup\leavevmode
\parskip\z@\relax
% upper row of icons
\null\parbox[c]{.2\linewidth}{\@logo  }\hfill\uulmlogo\vskip.75\uulm@margin\par
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
\titleformat{\section}
  {\centering\normalfont\bfseries\Large\color{red}}
  {\thesection}{1em}{}[\color{uulmaccent}\belowsecrule]
\pagestyle{empty}

\RequirePackage{caption}
\DeclareCaptionFont{main}{\color{red}}
\captionsetup{labelfont={main,bf},font={small}}

\linespread{1.1}

\endinput