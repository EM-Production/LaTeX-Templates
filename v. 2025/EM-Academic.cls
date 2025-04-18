\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EM-Academic}[2025/03/24 EM-Type document class]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax

\LoadClass{article} 

%----------------------------------------------------------------------------------------

\RequirePackage[%
  a4paper,
  top=27.4mm,
  bottom=27.4mm,
  left=24.8mm,
  textwidth=114mm,
  marginparsep=6.2mm,
  marginparwidth=40.2mm,
  headsep=2\baselineskip,
  headheight=\baselineskip
]{geometry}

%------

\RequirePackage{fontspec}
\RequirePackage{unicode-math}

\setmainfont[%
    Ligatures=TeX, 
    Numbers={Lowercase,Proportional}, 
    SmallCapsFeatures={LetterSpace=3,Letters=UppercaseSmallCaps},
    UprightFont={Source Serif 4},
    UprightFeatures={%
        SizeFeatures = {%
            { Size = -8.5, Font = Source Serif 4 Caption, Numbers=Uppercase }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText }, 
            { Size = 11-14.5, Font = Source Serif 4 }, 
            { Size = 14.5-21.5, Font = Source Serif 4 Subhead }, 
            { Size = 21.5-, Font = Source Serif 4 Display } 
        }%
    },
    ItalicFont={Source Serif 4 Italic},
    ItalicFeatures={%
        SizeFeatures = {%
            { Size = -8.5, Font = Source Serif 4 Caption Italic, Numbers=Uppercase }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText Italic }, 
            { Size = 11-14.5, Font = Source Serif 4 Italic }, 
            { Size = 14.5-21.5, Font = Source Serif 4 Subhead Italic }, 
            { Size = 21.5-, Font = Source Serif 4 Display Italic } 
        }%
    },
    BoldFont={Source Serif 4 Bold},
    BoldFeatures={%
        SizeFeatures = {%
            { Size = -8.5, Font = Source Serif 4 Caption Bold, Numbers=Uppercase }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText Bold }, 
            { Size = 11-14.5, Font = Source Serif 4 Bold }, 
            { Size = 14.5-21.5, Font = Source Serif 4 Subhead Bold }, 
            { Size = 21.5-, Font = Source Serif 4 Display Bold } 
        }%
    },
    BoldItalicFont={Source Serif 4 Bold Italic},
    BoldItalicFeatures={%
        SizeFeatures = {%
            { Size = -8.5, Font = Source Serif 4 Caption Bold Italic, Numbers=Uppercase }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText Bold Italic }, 
            { Size = 11-14.5, Font = Source Serif 4 Bold Italic }, 
            { Size = 14.5-21.5, Font = Source Serif 4 Subhead Bold Italic }, 
            { Size = 21.5-, Font = Source Serif 4 Display Bold Italic } 
        }%
    }%
]{Source Serif 4}

\newfontfamily\cyrillicfonttt[
  Scale=MatchLowercase,
  Ligatures=ResetAll
]{JetBrains Mono}

\setmonofont[
  Scale=MatchLowercase,
  Ligatures=ResetAll
]{JetBrains Mono}

\setmathfont[Scale=MatchLowercase]{XCharter Math}

%------

\RequirePackage{setspace}

\onehalfspacing

%------

\RequirePackage{polyglossia}

\setmainlanguage{ukrainian}
\setotherlanguages{english,russian}

%------

\RequirePackage{microtype}

\microtypesetup{%
  protrusion=true,
  expansion=true,
  stretch=30
}

%------

\RequirePackage{ragged2e}

\setlength{\parindent}{2em}

%------

\RequirePackage{tabularray}
\UseTblrLibrary{amsmath,siunitx,booktabs}

\AtBeginEnvironment{tabular}{\addfontfeatures{Numbers={Uppercase,Monospaced}}\RaggedRight}
\AtBeginEnvironment{tblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}\RaggedRight}
\AtBeginEnvironment{longtblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}\RaggedRight}
\apptocmd{\tableofcontents}{\vspace{7.5pt plus 0.5ex minus 0.1ex}}{}{}
\renewcommand{\theequation}{{\addfontfeatures{Numbers={Uppercase,Monospaced}}\arabic{equation}}}

%------

\RequirePackage[compact]{titlesec}
\RequirePackage{titletoc}

%------

\titleformat%
  {\section}%
  {\raggedright\bfseries\addfontfeatures{Numbers=Uppercase}}%
  {{\addfontfeatures{Numbers={Uppercase,Monospaced}}\thesection}}%
  {1em}%
  {}%
  []

%------

\titleformat%
  {\subsection}%
  {\raggedright\scshape}%
  {\thesubsection}%
  {0.5em}%
  {}%
  []

%------

\titleformat%
  {\subsubsection}%
  {\raggedright\addfontfeatures{Numbers=Uppercase}}%
  {\textsc{\thesubsubsection}}%
  {0.5em}%
  {\itshape}%
  []

%------

\titleformat%
  {\paragraph}%
  [runin]
  {\scshape}%
  {\theparagraph}%
  {0em}%
  {}%
  [.]

%------

\titlespacing*{\section}{0pt}{15pt plus 1ex minus 0.2ex}{15pt plus 0.2ex}
\titlespacing*{\subsection}{0pt}{15pt plus 1ex minus 0.2ex}{15pt plus 0.2ex}
\titlespacing*{\subsubsection}{0pt}{15pt plus 1ex minus 0.2ex}{15pt plus 0.2ex}
\titlespacing*{\paragraph}{0pt}{15pt plus 1ex minus 0.2ex}{0.5em} 

%------

\titlecontents{section}%
  [1.4em]%
  {\vspace*{7.5pt plus 0.5ex minus 0.1ex}\small\bfseries\addfontfeatures{Numbers=Uppercase}}%
  {{\addfontfeatures{Numbers={Uppercase,Monospaced}}\contentslabel{1.5em}}}%
  {\hspace*{-1.5em}}%
  {\titlerule*{}\addfontfeatures{Numbers={Uppercase,Monospaced}}\contentspage}

\titlecontents{subsection}%
  [3.7em]%
  {\small\addfontfeatures{Numbers=Uppercase}}%
  {\textsc{\contentslabel{2.5em}}}%
  {\hspace*{-2.5em}}%
  {\titlerule*[1em]{.}\textsc{\contentspage}}

\titlecontents{subsubsection}%
  [6.9em]%
  {\small\addfontfeatures{Numbers=Uppercase}}%
  {\textsc{\contentslabel{3.5em}}}%
  {\hspace*{-3.5em}}%
  {\titlerule*[1em]{.}\textsc{\contentspage}}

%------

\providecommand{\CurrentHeading}{}

\providecommand{\Heading}[1]{%
  \renewcommand{\CurrentHeading}{#1}% 
}

\providecommand{\HeaderText}{\textsc{\MakeLowercase\CurrentHeading}}

\RequirePackage{calc}

\RequirePackage{fancyhdr} 
\pagestyle{fancy}

\renewcommand{\headrulewidth}{0pt} 

\fancyhf{} 

\fancyheadoffset[R]{\marginparsep + \marginparwidth}

\fancyhead[R]{\small\HeaderText\quad\addfontfeatures{Numbers={Uppercase,Monospaced}}\thepage}

\fancypagestyle{plain}{
    \fancyhf{}
    \fancyhead[R]{\small\HeaderText\quad\addfontfeatures{Numbers={Uppercase,Monospaced}}\thepage}
}

%------

\RequirePackage{titling} 

\setlength{\droptitle}{-4\baselineskip} 

\pretitle{\begin{flushleft}\fontsize{14pt}{17pt}\addfontfeatures{Numbers=Uppercase}}
\posttitle{\par\end{flushleft}}

\preauthor{\begin{flushleft}\fontsize{12pt}{14.4pt}\addfontfeatures{Numbers=Uppercase}}
\postauthor{\par\end{flushleft}}

\predate{\begin{flushleft}\fontsize{12pt}{14.4pt}\addfontfeatures{Numbers=Uppercase}}
\postdate{\par\end{flushleft}}

\patchcmd{\maketitle}{plain}{empty}{}{} 

%------

\RequirePackage[runin]{abstract} 

\renewcommand{\abstractnamefont}{\small\bfseries} 
\renewcommand{\abstracttextfont}{\small} 

\setlength{\absleftindent}{2em}
\setlength{\absrightindent}{2em}
\setlength{\abstitleskip}{-\parindent}
\abslabeldelim{\newline}

%------

\RequirePackage[%
	backend=biber, 
	citestyle=numeric, 
	bibstyle=numeric,
	sorting=none
]{biblatex}

\DeclareFieldFormat{labelnumber}{\textsc{#1}}

\addbibresource{main.bib} 

\RequirePackage{csquotes}
\RequirePackage{quoting}

\quotingsetup{%
  leftmargin=2em,
  rightmargin=2em,
  indentfirst=false,
  vskip=7.5pt plus 0.5ex minus 0.1ex
}

\renewcommand*{\quotingfont}{\small}

%------

\RequirePackage{caption}
\RequirePackage{subcaption}

\captionsetup*{%
  font=footnotesize,
  format=plain,
  labelfont=sc,
  justification=RaggedRight,
  textformat=period, 
  skip=0.5em
}

\subcaptionsetup*{%
  font=footnotesize,
  labelsep=colon,
  labelfont=sc,
  labelformat=simple,
  justification=RaggedRight,
  textformat=period
}

\DeclareCaptionStyle{sidestyle}{%
  font=footnotesize, 
  format=plain, 
  labelfont=sc, 
  justification=RaggedRight, 
  textformat=period
}

\captionsetup*[figure]{name=Мал.}
\captionsetup*[table]{name=Табл.}
\captionsetup*[equation]{name=Рівн.}

\RequirePackage[%
  mark=arabic,
  font=rm,
  size=footnote,
  shape=up,
  per=none,
  Ragged
]{sidenotesplus}

\DeclareCaptionStyle{marginfigure}{style=sidestyle}
\DeclareCaptionStyle{margintable}{style=sidestyle}

\DeclareCaptionStyle{sidecaption}{style=sidestyle}
\captionsetup*[sidecaption]{style=sidestyle}

%------

\RequirePackage{enumitem} 

\setlist{%
  noitemsep,
  labelsep=0.5em
} 

\setlist[enumerate]{%
  font=\scshape
}

\setlist[enumerate,1]{%
  label=\arabic*.,
  ref=\arabic*,
  topsep=7.5pt plus 0.5ex minus 0.1ex,
  leftmargin=2em
}

\setlist[enumerate,2]{%
  label=\arabic{enumi}.\arabic{enumii},
  ref=\arabic{enumi}.\arabic{enumii},
  topsep=3.75pt plus 0.25ex minus 0.05ex,
  leftmargin=*
}

\setlist[enumerate,3]{%
  label=\arabic{enumi}.\arabic{enumii}.\arabic{enumiii},
  ref=\arabic{enumi}.\arabic{enumii}.\arabic{enumiii},
  topsep=1.875pt plus 0.125ex minus 0.025ex,
  leftmargin=*
}

\setlist[itemize,1]{%
  topsep=7.5pt plus 0.5ex minus 0.1ex,
  leftmargin=2em
}

\setlist[itemize,2]{%
  topsep=3.75pt plus 0.25ex minus 0.05ex,
  leftmargin=*
}

\setlist[itemize,3]{%
  topsep=1.875pt plus 0.125ex minus 0.025ex,
  leftmargin=*
}

\setlist[description]{%
  topsep=7.5pt plus 0.5ex minus 0.1ex,
  font=\normalfont\itshape,
  leftmargin=2em
}

%------

\RequirePackage{xcolor}
\RequirePackage{listings}

\definecolor{listingkeywords}{rgb}{0.0, 0.5, 0.0}
\definecolor{listingidentifiers}{rgb}{0, 0, 0}
\definecolor{listingcomments}{rgb}{0.25, 0.5, 0.5}
\definecolor{listingstrings}{rgb}{0.73, 0.13, 0.13}
\definecolor{listingnumbers}{rgb}{0.25, 0.25, 0.25}

\lstdefinestyle{em-style}{%
  aboveskip={7.5pt plus 0.5ex minus 0.1ex},
  belowskip={7.5pt plus 0.5ex minus 0.1ex},
	basicstyle=\small\ttfamily,
	commentstyle=\color{listingcomments}\itshape,
	keywordstyle=\color{listingkeywords}\bfseries,
	numberstyle=\scriptsize\color{listingnumbers}\ttfamily,
	stringstyle=\color{listingstrings},
	identifierstyle=\color{listingidentifiers},
	breakatwhitespace=false,
	breaklines=true,
	captionpos=t,
	keepspaces=true,
	showspaces=false,
	showstringspaces=false,
	showtabs=false,
	numbers=left,
	numbersep=1em,
	%frame=lines,
	frame=l,
	framerule=0.7pt,
	tabsize=4
}

\lstset{style=em-style}

\renewcommand{\lstlistingname}{Лістинг}

%------

\RequirePackage{amsthm}

\newtheoremstyle{myplain}%
  {7.5pt plus 0.5ex minus 0.1ex}%   
  {7.5pt plus 0.5ex minus 0.1ex}%  
  {\itshape}%
  {}%       
  {\scshape}%
  {.}%         
  {0.5em}%
  {}        

\newtheoremstyle{mydefinition}%
  {7.5pt plus 0.5ex minus 0.1ex}%
  {7.5pt plus 0.5ex minus 0.1ex}%
  {\normalfont}%
  {}%        
  {\scshape}%
  {.}%         
  {0.5em}%
  {}

\newtheoremstyle{myremark}%
  {7.5pt plus 0.5ex minus 0.1ex}%
  {7.5pt plus 0.5ex minus 0.1ex}%
  {\normalfont}%
  {}%        
  {\itshape}%
  {.}%         
  {0.5em}%
  {}

\theoremstyle{myplain}
\newtheorem{theorem}{Теорема}
\newtheorem*{theorem*}{Теорема}
\newtheorem{corollary}{Наслідок}
\newtheorem*{corollary*}{Наслідок}
\newtheorem{lemma}{Лема}
\newtheorem*{lemma*}{Лема}
\newtheorem{proposition}{Твердження}
\newtheorem*{proposition*}{Твердження}
\newtheorem{conjecture}{Гіпотеза}
\newtheorem*{conjecture*}{Гіпотеза}

\theoremstyle{mydefinition}
\newtheorem{definition}{Означення}
\newtheorem*{definition*}{Означення}

\theoremstyle{myremark}
\newtheorem{remark}{Зауваження}
\newtheorem*{remark*}{Зауваження}

%------

\providecommand{\sups}[1]{{\addfontfeatures{VerticalPosition=Superior}#1}}
\providecommand{\subs}[1]{{\addfontfeatures{VerticalPosition=Inferior}#1}}
\providecommand{\numr}[1]{{\addfontfeatures{VerticalPosition=Numerator}#1}}
\providecommand{\dnom}[1]{{\addfontfeatures{VerticalPosition=Denominator}#1}}
\providecommand{\sinf}[1]{{\addfontfeatures{VerticalPosition=ScientificInferior}#1}}
\providecommand{\ordn}[1]{{\addfontfeatures{VerticalPosition=Ordinal}#1}}

%------ USER PACKAGES ------%

\RequirePackage[detect-all]{siunitx}

\RequirePackage[%
  version=4,
  arrows=pgf-filled
]{mhchem}

\RequirePackage{chemfig}

\RequirePackage{graphicx}
\graphicspath{ {./Images/} }

%------ 

\RequirePackage{hyperref}

\hypersetup{%
  hidelinks,
  breaklinks=true
}

\urlstyle{tt}

\def\UrlBreaks{\do\/\do\-\do\_\do\%\do\0\do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9}

\renewcommand{\figureautorefname}{мал.}
\renewcommand{\tableautorefname}{табл.}
\renewcommand{\equationautorefname}{рівн.}
\renewcommand{\pageautorefname}{ст.}

%------ 
