%%% =========================================================================
%%%
%%%	LaTeX class file revised for PhysCon 2003 Conference Proceedings
%%%     by Alexander Churilov, March 2003 
%%%
%%==============================================================
%% filename    = "CDCarticle.cls"
%% docstring   = "This is a LaTeX2e class file for camera ready
%%                articles according to instructions of the 
%%                IEEE Conference on Decision and Control(CDC).
%%                default font size is 10 points."
%%
%%%               You may want to adjust the position of the
%%%               text on the page (for your specific
%%%               printer) with the commands
%%%               \addtolength{\oddsidemargin}{Xmm} % right Xmm
%%%               \addtolength{\topmargin}{Ymm}     % down Ymm
%%===============================================================                
%%
%% This is file `article.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% classes.dtx  (with options: `article')
%% 
%% This is a generated file.
%% 
%% Copyright 1993 1994 1995 1996 1997
%% The LaTeX3 Project and any individual authors listed elsewhere
%% in this file.
%%================================================================= 

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{physcon}  % Rev. <March, 2003> A.N. Churilov

\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagefalse
% Rev. by A.N.Churilov for a4 paper
\setlength\paperheight {297mm}
\setlength\paperwidth  {210mm}
\renewcommand\@ptsize{0}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\if@compatibility\else
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
\DeclareOption{notitlepage}{\@titlepagefalse}
\fi
% Rev. A.N. Churilov
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
% Rev. A.N. Churilov
\ExecuteOptions{10pt,oneside,final}
\ProcessOptions
\input{size1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
% footnotes are ignored
\renewcommand\footnote{}       %Rev. A. Churilov
% Removed by A.N. Churilov
  \if@titlepage
  \newcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
%  \let \footnote \thanks
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\else
\newcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{empty}\@thanks    % Rev. A.N. Churilov
  \endgroup
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi
\setcounter{secnumdepth}{3}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
% Rev. A.N. Churilov

\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\large\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}
% Rev. A.N. Churilov
\setlength\leftmargini  {2em} 
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
% Rev. A.N. Churilov
\setlength\leftmarginv  {.5em}
\setlength\leftmarginvi {.5em}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\if@titlepage
  \newenvironment{abstract}{%
      \titlepage
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \bfseries \abstractname
        \@endparpenalty\@M
      \end{center}}%
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{%  Rev. A.N. Churilov
        \section*{\abstractname}%
      }
\fi
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\if@compatibility
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\z@
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
    }
\else
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\@ne
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }
\fi
\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \renewcommand\thesection{\@Alph\c@section}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand \theequation {\@arabic\c@equation}
\newcounter{figure}
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\newtheorem{lemma}{Lemma} % added by A.N. Churilov

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\section*{\refname
        \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
% Rev. by A.N. Churilov
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\refname{References}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
% Rev. by A.N. Churilov
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{empty}
% Rev. A.N. Churilov
\pagenumbering{arabic} 
  \raggedbottom
  \twocolumn
  \sloppy
  \flushbottom
\textheight 240mm       %Rev. A.N. Churilov
\textwidth  165mm       %Rev. A.N. Churilov
\columnsep  5mm         %Rev. A.N. Churilov
\parindent 0pt
\parskip 1em    % Spacing around sectioning now robust wrt changes in parskip 
\oddsidemargin -4mm     %Rev. A.N. Churilov
\evensidemargin -4mm    %Rev. A.N. Churilov
\topmargin -15mm        %Rev. A.N. Churilov
\def\maketitle{\par
\begingroup
\def\@makefnmark{\hbox{$^{\@thefnmark}$\hss}}
\if@twocolumn 
\twocolumn[\@maketitle] 
\else \newpage
\global\@topnum\z@ \@maketitle 
\fi\pagestyle{empty}\@thanks %Rev. A.N. Churilov
\endgroup
\setcounter{footnote}{0}
\let\maketitle\relax
\let\@maketitle\relax
\gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\thanks\relax}
\def\@maketitle{\newpage
\null \vskip .3em      %Rev. <15-JUNE-96> C. Schrader
\begin{center}
{\LARGE\bf \@title \par} \vskip 1.5em {\large \lineskip .5em
\begin{tabular}[t]{c}\@author 
\end{tabular}\par} 
\end{center}
\par
\vskip 1.5em} 

\def\@startsection#1#2#3#4#5#6#7{\if@noskipsec \leavevmode \fi
   \par \@tempskipa #4\relax
   \@afterindenttrue
   \ifdim \@tempskipa <\z@ \@tempskipa -\@tempskipa \@afterindentfalse\fi
   \addtolength{\@tempskipa}{-\parskip}
   \if@nobreak \everypar{}\else
     \addpenalty{\@secpenalty}\addvspace{\@tempskipa}\fi
     \@ifstar
     {\@ssect{#1}{#2}{#3}{#4}{#5}{#6}{#7}}
     {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}{#7}}}}

\def\@sect#1#2#3#4#5#6#7[#8]#9{
   \ifnum #2>\c@secnumdepth
      \def\@svsec{}
   \else 
      \ifnum #2> 2 % if it is subsubsection, paragraph  ...
        \refstepcounter{#1}\edef\@svsec{{\csname the#1\endcsname}\hskip .5em }
      \else        % if it is section or subsection, put "." after number
        %Rev. <15-JUNE-96> C. Schrader ("." removed)
        \refstepcounter{#1}\edef\@svsec{{\csname the#1\endcsname}\hskip .5em }
      \fi
   \fi
   \@tempskipa #5\relax
   \ifdim \@tempskipa>\z@ 
      \begingroup #6\relax
      \ifnum #2 > 1  % if it is not a section .. 
         %% header indented at right of section number
         %\@hangfrom{\hskip #3\relax\@svsec}{\interlinepenalty \@M #8#7\par}
         %% header on the same line as section number
         \@hangfrom{\hskip #3\relax}{\@svsec\interlinepenalty \@M #8#7\par}
      \else          % if it is a section .. 
         \setbox1=\hbox{\@svsec #8#7}
         \ifdim \wd1>\columnwidth
             {\centering\@svsec \interlinepenalty \@M #8#7\par}
         \else  % if it is section AND not wider then width of column
             \vskip\parskip\centerline{\@svsec\interlinepenalty\@M #8#7}\par
         \fi
      \fi
      \endgroup
      \csname #1mark\endcsname{#8}\addcontentsline
         {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                      \protect\numberline{\csname the#1\endcsname}\fi
                    #8}
   \else
        \def\@svsechd{#6\hskip #3\@svsec #9#7\csname #1mark\endcsname
              {#8}\addcontentsline {toc}{#1}{\ifnum #2>\c@secnumdepth \else
               \protect\numberline{\csname the#1\endcsname}\fi
               #8}}
   \fi
   \@xsect{#5}}

\def\@ssect#1#2#3#4#5#6#7#8{\@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
     \begingroup #6\relax
     \ifnum #2 > 1 
         \@hangfrom{\hskip #3}{\interlinepenalty\@M #8#7\par}
     \else % if it is section AND not wider then width of column
         \setbox1=\hbox{#8#7}
         \ifdim \wd1>\columnwidth
             {\centering#8#7\par}
         \else
             \vskip\parskip\centerline{#8#7}\par
         \fi
     \fi
     \endgroup
  \else 
     \def\@svsechd{#6\hskip #3\relax #8#7}
  \fi
  \@xsect{#5}}

\def\@xsect#1{\@tempskipa #1\relax
      \ifdim \@tempskipa>\z@
       \par \nobreak
       \addtolength{\@tempskipa}{-\parskip}
       \vskip \@tempskipa
       \@afterheading
    \else \global\@nobreakfalse \global\@noskipsectrue
       \everypar{\if@noskipsec \global\@noskipsecfalse
                   \clubpenalty\@M \hskip -\parindent
                   \begingroup \@svsechd \endgroup \unskip
                   \hskip -#1
                  \else \clubpenalty \@clubpenalty
                    \everypar{}\fi}\fi\ignorespaces}

\def\section{\@startsection{section}{1}{\z@}
{6.5ex plus 0.5ex minus 0.5ex}{3ex plus 0.3ex}{\bf}{}}
\def\subsection{\@startsection{subsection}{2}{\z@}{3.0ex plus 
.3ex minus .1ex}{0.01ex plus .0ex}{\bf}{}}
\def\subsubsection{\@startsection{subsubsection}{3}{2em}{3.0ex plus 
.3ex minus .1ex}{-1em}{\bf}{:}}

\def\thebibliography#1{\section*        %Rev. <15-JUNE-96> C. Schrader
{References\@mkboth
{References}{References}}\parskip 0pt \list 
{[\arabic{enumi}]\hfill}{\labelwidth 7mm \leftmargin\labelwidth
\itemindent 9mm \itemsep 0pt
\advance\leftmargin -7mm
\usecounter{enumi}}
\def\newblock{\hskip .11em plus .33em minus .07em}
\sloppy\clubpenalty4000\widowpenalty4000
\sfcode`\.=1000\relax}
\let\endthebibliography=\endlist

% Removed by A.N. Churilov

%%% Redefines captions
\newlength{\captionindent}
\long\def\@makecaption#1#2{
      \vskip 10pt 
      \setbox\@tempboxa\hbox{{\bf #1:} \rm #2}
      \ifdim \wd\@tempboxa >\hsize 
      \setbox\@tempboxa\hbox{\bf#1:~}
      \setlength\captionindent{\wd\@tempboxa} % caption indent of width of #1
%      \setlength\captionindent{0pt}           % no caption indent 
      \parbox[t]{\hsize}{\small \hangindent \captionindent \hangafter=1% 
      \unhbox\@tempboxa#2}
      \else \hbox to\hsize{\hfil\box\@tempboxa\hfil} 
      \fi
}

%%% defines the QED square and the proof environment
\def\QED{~\rule[-1pt]{5pt}{5pt}\par\medskip}
\newenvironment{proof}{{\bf Proof: \ }}{ \hfill \QED}

% set up default pagestyle
\pagestyle{empty}               % Rev. A.N. Churilov
\bibliographystyle{unsrt}       %Added by A. Churilov

%% make itemsep narrower
\def\@normalsize{\@setsize\normalsize{11.9pt}\xpt\@xpt
\abovedisplayskip 10pt plus2pt minus5pt
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ plus3pt
\belowdisplayshortskip 6pt plus3pt minus3pt
\def\@listi{\leftmargin\leftmargini
\topsep -\parskip \addtolength{\topsep}{0.5em}
\parsep 1pt plus 1pt minus 1pt
\itemsep 2pt plus 1pt minus 1pt
}} 

\twocolumn
\sloppy
\flushbottom
\endinput
%%
%% End of file `physcon.cls'.



