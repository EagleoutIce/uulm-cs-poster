\ProvidesClass{uulm-cs-poster}[2022/07/19 ]

\LoadClass[oneside]{article}
\newdimen\uulm@margin \uulm@margin2cm
\RequirePackage[margin=\uulm@margin]{geometry} % wellp
\RequirePackage{parskip}

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

\usepackage[default]{FiraSans}

\colorlet{backgroundcolor}{white}

\def\logo#1{\def\@logo{#1}}
\let\@logo\@empty
% TODO: SP logo
\def\maketitle{\begingroup\leavevmode
\parskip\z@\relax
% upper row of icons
\null\parbox[c]{.2\linewidth}{\@logo  }\hfill\uulmlogo\vskip.75\uulm@margin\par
\hspace{-\uulm@margin}%
\fboxsep\z@\fcolorbox{red}{red}{
\minipage[b]\paperwidth
\vspace*{.5cm}%
\hspace\uulm@margin\color{white}{\fontsize{36pt}{36pt}\textsc{\textbf{\@title}}\par}%
\hspace\uulm@margin\color{white}{\LARGE \@author \par}%
\vspace*{.5cm}%
\endminipage}\vskip1cm\par\endgroup}

\columnseprule=.4pt

\endinput