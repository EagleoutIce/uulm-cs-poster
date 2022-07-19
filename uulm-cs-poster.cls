\ProvidesClass{uulm-cs-poster}[2022/07/19 ]

\LoadClass[25pt, margin=0mm, innermargin=15mm, blockverticalspace=15mm, colspace=15mm, subcolspace=8mm]{tikzposter}
\tikzposterlatexaffectionproofoff

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

\usetheme{Simple}
\settitle{\minipage[b]{.8\linewidth}
\vspace*{2cm}
\hspace{2cm}\color{white}{ \Huge\textsc{\textbf{\@title}} \par }
\hspace{2cm}\color{white}{\LARGE \@author \par}%
\vspace*{2cm}
\endminipage}

\definetitlestyle{uulm-title}{width=\paperwidth, linewidth=2pt, innersep=15pt,titletotopverticalspace=0mm,titletoblockverticalspace=10mm
}{\scope
\path[fill,draw,red] (\titleposleft,\titleposbottom) rectangle (\titleposright,\titlepostop);
\endscope}

\usetitlestyle[]{uulm-title}
\setlength{\columnseprule}{0.4pt}

\endinput