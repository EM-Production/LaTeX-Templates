\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EM-World}[2025/03/24 EM-Type document class]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax

\LoadClass[a4paper,10pt,fleqn]{article} 

%----------------------------------------------------------------------------------------

\RequirePackage{graphicx}
\graphicspath{ {./Images/} }

%------

\RequirePackage[
  a4paper,
  top=27.4mm,
  left=24.8mm,
  textwidth=107mm,
  marginparsep=8.2mm,
  marginparwidth=49.4mm,
  foot=3\baselineskip
]{geometry}

%------

\RequirePackage{fontspec}
\RequirePackage{unicode-math}
\RequirePackage{amsthm}
\RequirePackage{polyglossia}
\RequirePackage[detect-all]{siunitx}
\RequirePackage[version=4,arrows=pgf-filled]{mhchem}

%------

\setmainfont[ 
    Ligatures=TeX, 
    Numbers={Lowercase,Proportional}, 
    SmallCapsFeatures={LetterSpace=3,Letters=UppercaseSmallCaps},
    UprightFont={Source Serif 4},
    UprightFeatures={
        SizeFeatures = { 
            { Size = -8.5, Font = Source Serif 4 Caption, Numbers=Uppercase }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText }, 
            { Size = 11-14, Font = Source Serif 4 }, 
            { Size = 14-21.5, Font = Source Serif 4 Subhead }, 
            { Size = 21.5-, Font = Source Serif 4 Display } 
        }
    },
    ItalicFont={Source Serif 4 Italic},
    ItalicFeatures={
        SizeFeatures = { 
            { Size = -8.5, Font = Source Serif 4 Caption Italic, Numbers=Uppercase }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText Italic }, 
            { Size = 11-14, Font = Source Serif 4 Italic }, 
            { Size = 14-21.5, Font = Source Serif 4 Subhead Italic }, 
            { Size = 21.5-, Font = Source Serif 4 Display Italic } 
        }
    },
    BoldFont={Source Serif 4 Bold},
    BoldFeatures={
        SizeFeatures = { 
            { Size = -8.5, Font = Source Serif 4 Caption Bold, Numbers=Uppercase }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText Bold }, 
            { Size = 11-14, Font = Source Serif 4 Bold }, 
            { Size = 14-21.5, Font = Source Serif 4 Subhead Bold }, 
            { Size = 21.5-, Font = Source Serif 4 Display Bold } 
        }
    },
    BoldItalicFont={Source Serif 4 Bold Italic},
    BoldItalicFeatures={
        SizeFeatures = { 
            { Size = -8.5, Font = Source Serif 4 Caption Bold Italic, Numbers=Uppercase }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText Bold Italic }, 
            { Size = 11-14, Font = Source Serif 4 Bold Italic }, 
            { Size = 14-21.5, Font = Source Serif 4 Subhead Bold Italic }, 
            { Size = 21.5-, Font = Source Serif 4 Display Bold Italic } 
        }
    }
]{Source Serif 4}

\newfontfamily\cyrillicfonttt[
  Scale=MatchLowercase,
  Ligatures=ResetAll
]{JetBrains Mono}

\setmonofont[
  Scale=MatchLowercase,
  Ligatures=ResetAll
]{JetBrains Mono}

\setmathrm[Scale=MatchLowercase]{XCharter Math}
\setmathfont[Scale=MatchLowercase]{XCharter Math}

%------

\linespread{1.15} 

%------

\setmainlanguage{ukrainian}
\setotherlanguages{english,russian}

%------

\RequirePackage{microtype}
\microtypesetup{
  protrusion=true,
  expansion=true
}

%------

\RequirePackage{ragged2e}

\RaggedRight

\setlength{\parindent}{2em}

%------

\RequirePackage{etoolbox}

\RequirePackage{tabularray}
\UseTblrLibrary{amsmath,siunitx,booktabs}

\AtBeginEnvironment{tabular}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\AtBeginEnvironment{tblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\AtBeginEnvironment{longtblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\apptocmd{\tableofcontents}{\vspace{\baselineskip}}{}{}
\renewcommand{\theequation}{{\addfontfeatures{Numbers={Uppercase,Monospaced}}\arabic{equation}}}

%------

\RequirePackage[compact]{titlesec}
\RequirePackage{titletoc}

%------

\titleformat%
  {\section}%
  {\raggedright\bfseries\addfontfeatures{Numbers=Uppercase}}%
  {\addfontfeatures{Numbers={Uppercase,Monospaced}}\thesection}%
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
  {\scshape\thesubsubsection}%
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

\titlespacing*{\section}{0pt}{13.8pt plus 1ex minus 0.2ex}{13.8pt plus 0.2ex}
\titlespacing*{\subsection}{0pt}{13.8pt plus 1ex minus 0.2ex}{13.8pt plus 0.2ex}
\titlespacing*{\subsubsection}{0pt}{13.8pt plus 1ex minus 0.2ex}{13.8pt plus 0.2ex}
\titlespacing*{\paragraph}{0pt}{13.8pt plus 1ex minus 0.2ex}{1em} 

%------

\titlecontents{section}%
  [1.4em]%
  {\small\bfseries\addfontfeatures{Numbers={Uppercase,Monospaced}}}%
  {\contentslabel{1.5em}}%
  {\hspace*{-1.5em}}%
  {\titlerule*{}\contentspage}

\titlecontents{subsection}%
  [3.7em]%
  {\small\addfontfeatures{Numbers={Uppercase,Monospaced}}}%
  {\contentslabel{2.5em}}%
  {\hspace*{-2.5em}}%
  {\titlerule*[1em]{.}\contentspage}

\titlecontents{subsubsection}%
  [6.9em]%
  {\small\addfontfeatures{Numbers={Uppercase,Monospaced}}}%
  {\contentslabel{3.5em}}%
  {\hspace*{-3.5em}}%
  {\titlerule*[1em]{.}\contentspage}

%------

\RequirePackage{fancyhdr} 
\pagestyle{fancy} 

\renewcommand{\headrulewidth}{0pt} 

\fancyhf{} 

\fancyfoot[R]{\addfontfeatures{Numbers={Uppercase,Monospaced}}\thepage} 

\fancypagestyle{plain}{
    \fancyhf{} 
    \fancyfoot[R]{\addfontfeatures{Numbers={Uppercase,Monospaced}}\thepage} 
}

%------

\RequirePackage{titling} 

\setlength{\droptitle}{-4\baselineskip} 

\pretitle{\begin{flushleft}\fontsize{14pt}{16pt}\addfontfeatures{Numbers=Uppercase}}
\posttitle{\par\end{flushleft}}

\preauthor{\begin{flushleft}}
\postauthor{\par\end{flushleft}}

\predate{\begin{flushleft}\addfontfeatures{Numbers={Uppercase,Monospaced}}}
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

\RequirePackage[
	backend=biber, 
	citestyle=numeric, 
	bibstyle=numeric,
	sorting=none
]{biblatex}

\DeclareFieldFormat{labelnumber}{\scshape #1}

\addbibresource{main.bib} 

\RequirePackage{csquotes}
\RequirePackage{quoting}

\quotingsetup{leftmargin=2em,rightmargin=2em,indentfirst=false,vskip=6.9pt plus 0.5ex minus 0.1ex}
\renewcommand*{\quotingfont}{\small}

%------

\RequirePackage{caption}
\RequirePackage{subcaption}

\DeclareCaptionStyle{mystyle}{%
  font={scriptsize}, 
  format=plain, 
  labelfont=sc, 
  justification=RaggedRight, 
  textformat=period, 
  skip=6pt
}

\DeclareCaptionStyle{mysubstyle}{%
  font={scriptsize}, 
  labelsep=colon, 
  labelfont=sc, 
  labelformat=simple, 
  justification=RaggedRight, 
  textformat=period
}

\captionsetup*[figure]{name=Мал., style=mystyle}
\captionsetup*[table]{name=Табл., style=mystyle}
\captionsetup*[equation]{name=Рівн., style=mystyle}

\subcaptionsetup*{style=mysubstyle}

\RequirePackage[mark=fnsymbol,font=rm,size=script,shape=up,Ragged]{sidenotesplus}

\DeclareCaptionStyle{marginfigure}{style=mystyle}
\DeclareCaptionStyle{margintable}{style=mystyle}

\DeclareCaptionStyle{sidecaption}{style=mystyle}
\captionsetup*[sidecaption]{style=mystyle}

%------

\RequirePackage[norule,hang]{footmisc}
\renewcommand\footnotemargin{\parindent}
\makeatletter
\renewcommand\@makefntext[1]{
    \@thefnmark.~#1}
\makeatother

%------

\RequirePackage{enumitem} 

\setlist{noitemsep} 

\setlist[enumerate]{label=\arabic*.,label*=\arabic*.,font=\scshape}
\setlist[enumerate,1]{leftmargin=2em,topsep=6.9pt plus 0.5ex minus 0.1ex}

\setlist[itemize,1]{leftmargin=2em,topsep=6.9pt plus 0.5ex minus 0.1ex}

\setlist[description]{font=\normalfont\itshape,leftmargin=2em}

%------

\RequirePackage{xcolor}
\RequirePackage{listings}

\definecolor{listingkeywords}{rgb}{0.0, 0.5, 0.0}
\definecolor{listingidentifiers}{rgb}{0, 0, 0}
\definecolor{listingcomments}{rgb}{0.25, 0.5, 0.5}
\definecolor{listingstrings}{rgb}{0.73, 0.13, 0.13}
\definecolor{listingnumbers}{rgb}{0.25, 0.25, 0.25}

\lstdefinestyle{em-style}{
	aboveskip=0.7\topskip,
	belowskip=0.1\topskip,
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
	framerule=.7pt,
	tabsize=4
}

\lstset{style=em-style}

\renewcommand{\lstlistingname}{Лістинг}

%------

\newtheoremstyle{myplain}%
  {\topsep}%   
  {\topsep}%  
  {\itshape}%
  {}%       
  {\scshape}%
  {.}%         
  {0.5em}%
  {}        

\newtheoremstyle{mydefinition}%
  {\topsep}%
  {\topsep}%
  {\normalfont}%
  {}%        
  {\scshape}%
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
\theoremstyle{remark}
\newtheorem{remark}{Зауваження}
\newtheorem*{remark*}{Зауваження}

%------

\RequirePackage{lettrine}

%------

\RequirePackage{hyperref}

\hypersetup{
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

\providecommand{\sups}[1]{{\addfontfeatures{VerticalPosition=Superior}#1}}
\providecommand{\subs}[1]{{\addfontfeatures{VerticalPosition=Inferior}#1}}
\providecommand{\numr}[1]{{\addfontfeatures{VerticalPosition=Numerator}#1}}
\providecommand{\dnom}[1]{{\addfontfeatures{VerticalPosition=Denominator}#1}}
\providecommand{\sinf}[1]{{\addfontfeatures{VerticalPosition=ScientificInferior}#1}}
\providecommand{\ordn}[1]{{\addfontfeatures{VerticalPosition=Ordinal}#1}}

%------

