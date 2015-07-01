\NeedsTeXFormat{LaTeX2e}
 
\ProvidesClass{these}[2014/07/29 Hubert Godfroy, V0.1]
 
% classe de base
 
\LoadClassWithOptions{memoir}
 
% extensions
 
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{graphicx}
\RequirePackage[frenchb]{babel}
\RequirePackage{setspace}
\RequirePackage{libertine}
\RequirePackage{euler}

%\chapterstyle{madsen}
%\chapterstyle{ell}
%\chapterstyle{veelo}
\setsecheadstyle{\Huge\sffamily\raggedright}
\setsubsecheadstyle{\LARGE\sffamily\raggedright}
\setsubsubsecheadstyle{\bfseries\sffamily\raggedright}
\maxsecnumdepth{subsection} % chapters, sections, and subsections are numbered

% commandes personnelles
 
\newcommand{\langue}{\emph} % mots en langues étrangères
\newcommand{\citital}{\emph} % citation en italique
\newcommand{\nomprog}{\texttt} % nom de programme en police teletype

\newcommand{\titre}[1]{\newcommand{\@titre}{#1}}
\newcommand{\auteur}[1]{\newcommand{\@auteur}{#1}}
\newcommand{\jour}[1]{\newcommand{\@jour}{#1}}
\newcommand{\domaine}[1]{\newcommand{\@domaine}{#1}}
\newcommand{\universite}[1]{\newcommand{\@universite}{#1}}
\newcommand{\laboratoire}[1]{\newcommand{\@laboratoire}{#1}}
\newcommand{\president}[1]{\newcommand{\@president}{#1}}
\newcommand{\rapporteurs}[1]{\newcommand{\@rapporteurs}{#1}}
\newcommand{\examinateurs}[1]{\newcommand{\@examinateurs}{#1}}

\newcommand{\pagedegarde}{
  \thispagestyle{empty}
  \newpage
  \centering
  \Large
  \@universite\\
  \large
  \@laboratoire\\
  \small
  \vspace{1mm}
  Thèse de doctorat \hspace{1cm} \@domaine\\
  \vspace{3cm}
  \Huge
  \textsf
  {\setlength{\baselineskip}{1.8\baselineskip}
  \@titre\\
  }
  \vspace{2cm}
  \LARGE
  \textnormal
  \@auteur\\
  \vspace{1cm}
  \large
  \@jour\\
  \vspace{5cm}
  \begin{minipage}[t]{0.33\textwidth}
    \textit{Rapporteurs :}\\
    \@rapporteurs
  \end{minipage}
  \begin{minipage}[t]{0.33\textwidth}
    \centering
    \textit{Président :}\\
    \@president
  \end{minipage}
  \begin{minipage}[t]{0.32\textwidth}
    \flushright
    \textit{Examinateurs :}\\
    \@examinateurs
  \end{minipage}

  \flushleft
  \newpage
    %\if@twoside
       %\thispagestyle{empty}
       %\hbox{}
       %\par\vfill\@dcd\@p@ndor@
       %\newpage
       %\addtocounter{page}{-2}%
    %\else
       %\addtocounter{page}{-1}%
    %\fi
}
