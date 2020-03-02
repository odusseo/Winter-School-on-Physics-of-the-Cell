% --- identification
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{standard-doc}[2001/03/03 UoBnote class]

% --- using pkgs
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
%\RequirePackage[margin=0.5in]{geometry}
%\usepackage[margin=0.5in]{geometry}

% --- define options
\newif\if@color\@colorfalse
\newif\if@pdf\@pdffalse
\DeclareOption{color}{\@colortrue}
\DeclareOption{pdftex}{\@pdftrue}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\if@pdf
\RequirePackage[pdftex]{graphicx}
\else
\RequirePackage{graphicx}
\fi

\LoadClass[a4paper]{article}

\topmargin -15mm
\headsep 10mm
\headheight 23mm

%%\footheight 0mm

\textheight230mm 
\textwidth150mm

%\textheight290mm 
%\textwidth190mm

\hoffset 0mm
\voffset 0mm
%%  modif centrage Coulon (papier A4, pas Letter) :
\oddsidemargin  -10mm
\evensidemargin -10mm

% These are not working
\leftmargin 15mm
\rightmargin 15mm


% --- load class


% color is switched on, use the color package
\if@color
\RequirePackage{color}
\fi%color

\def\issue#1{\gdef\@issue{#1}}
\def\@issue{\@latex@error{No \noexpand\issue given}\@ehc}
\def\shorttitle#1{\gdef\@shorttitle{#1}}
\def\@shorttitle{\@latex@error{No \noexpand\shorttitle given}\@ehc}

\renewcommand\maketitle{
\begin{titlepage}\begin{center}
 {\includegraphics[scale=0.59]{TrentoLOGO_2}} 

%\begin{minipage}[t]{.3\textwidth}
%{\includegraphics[height=2.0cm]{bhamcrest.png}} 
%\end{minipage}
%\begin{minipage}[t]{.3\textwidth}
%{\includegraphics[height=1.5cm]{bham_word_marque.png}} 
%\end{minipage}

\vskip2cm
   {\LARGE \bf \@title \par}%
   \vskip 3em%
   {\large
     \lineskip .75em%
     \begin{tabular}[t]{c}%
       \@author
     \end{tabular}\par}%
   \vskip 1.5em%
   {\large \textit{Issue:}~ \@issue \par}%
   \vskip 1.5em%
   {\Large \textit{Date:}~ \@date \par}%
   \vfil\null
    \vskip 4em%
{\large
University of Trento\\
Department of Physics\\
Via Sommarive 14, 38123\\
Povo (TN), Italy\\
%E-Mail: Username[at]star.sr.bham.ac.uk
} \end{center}
\end{titlepage}
}


\pagestyle{fancy}
%\lhead{\setlength{\unitlength}{1mm}
%{\includegraphics[height=10mm]{bhamlogo.eps}}}

\chead{\@shorttitle}
\rhead{}

\lfoot{} 
\cfoot{{\footnotesize \textit{page} \thepage\ of \pageref{LastPage}}} 
\rfoot{}


\message{note completed OK}


