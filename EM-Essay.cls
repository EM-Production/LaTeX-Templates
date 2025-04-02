\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EM-Essay}[2025/03/24 EM-Type document class]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax

\LoadClass[a4paper,10pt]{article} 

%----------------------------------------------------------------------------------------

\RequirePackage{graphicx}
\graphicspath{ {./Images/} }

\RequirePackage[norule,hang]{footmisc}
\renewcommand\footnotemargin{\parindent}
\makeatletter
\renewcommand\@makefntext[1]{
    \@thefnmark.~#1}
\makeatother

\RequirePackage[a4paper,textwidth=34em]{geometry}

\RequirePackage{fontspec}
\RequirePackage{polyglossia}

\setmainfont[
  Ligatures=TeX,
  Numbers={Lowercase,Proportional},
  SmallCapsFeatures={LetterSpace=3,Letters=UppercaseSmallCaps}
]{Literata}

\linespread{1.2}

\setlength{\parindent}{2em}

\RequirePackage{microtype}
\microtypesetup{
  protrusion=true,
  expansion=true
}

\RequirePackage{ragged2e}
\RaggedRight

\setmainlanguage{ukrainian}
\setotherlanguages{english,russian}

\RequirePackage{etoolbox}
\RequirePackage{tabularray}
\UseTblrLibrary{booktabs}

\AtBeginEnvironment{tabular}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\AtBeginEnvironment{tblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\AtBeginEnvironment{longtblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\apptocmd{\tableofcontents}{\vspace{\baselineskip}}{}{}

\RequirePackage{titlesec}
\RequirePackage{titletoc}

\titleformat{\section}[hang]{\fontsize{12pt}{16pt}\itshape}{}{0em}{}
\titleformat{\subsection}[hang]{\fontsize{11pt}{15pt}\itshape}{}{0em}{}

\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus.2ex}

\titlecontents{section}%
  [1.5em]%
  {\itshape\addfontfeatures{Numbers={Uppercase,Monospaced}}}%
  {\contentslabel{1.5em}}%
  {\hspace*{-1.5em}}%
  {\titlerule*{}\upshape\contentspage}

\titlecontents{subsection}%
  [4em]%
  {\addfontfeatures{Numbers={Uppercase,Monospaced}}}%
  {\contentslabel{2.5em}}%
  {\hspace*{-2.5em}}%
  {\titlerule*[1em]{.}\upshape\contentspage}

\RequirePackage{titling} 

\setlength{\droptitle}{-4\baselineskip} 

\pretitle{\begin{flushleft}\fontsize{14pt}{18pt}\addfontfeatures{Numbers=Uppercase}\itshape}
\posttitle{\par\end{flushleft}}

\preauthor{\begin{flushleft}\fontsize{12pt}{16pt}\addfontfeatures{Numbers=Uppercase}\itshape}
\postauthor{\par\end{flushleft}}

\predate{\begin{flushleft}\fontsize{12pt}{16pt}\addfontfeatures{Numbers=Uppercase}\itshape}
\postdate{\par\end{flushleft}}

\patchcmd{\maketitle}{plain}{empty}{}{} 

\RequirePackage[runin]{abstract} 

\renewcommand{\abstractnamefont}{\small\scshape} 
\renewcommand{\abstracttextfont}{\small} 

\setlength{\absleftindent}{2em}
\setlength{\absrightindent}{2em}
\setlength{\abstitleskip}{-\parindent}
\abslabeldelim{\newline}

\RequirePackage[
	backend=biber, 
	citestyle=numeric, 
	bibstyle=numeric,
	sorting=none
]{biblatex}

\DeclareFieldFormat{labelnumber}{\addfontfeatures{Numbers={Uppercase,Monospaced}} #1}

\addbibresource{main.bib} 

\RequirePackage{csquotes}
\RequirePackage{quoting}

\quotingsetup{leftmargin=2em,rightmargin=2em,indentfirst=false,vskip=7.2pt plus 0.5ex minus 0.1ex}
\renewcommand*{\quotingfont}{\small}

\RequirePackage{caption}
\RequirePackage{subcaption}

\captionsetup*{font={small}, format=plain, labelfont=sc, justification=RaggedRight, textformat=period, skip=6pt}
\subcaptionsetup*{font={small},labelsep=colon, labelfont=sc, labelformat=simple, justification=RaggedRight, textformat=period}

\captionsetup*[figure]{name=мал.}
\captionsetup*[table]{name=табл.}

\RequirePackage{enumitem} 

\setlist{noitemsep} 

\setlist[enumerate]{label=\arabic*.,label*=\arabic*.}
\setlist[enumerate,1]{leftmargin=2em,topsep=7.2pt plus 0.5ex minus 0.1ex}

\setlist[itemize,1]{leftmargin=2em,topsep=7.2pt plus 0.5ex minus 0.1ex}

\setlist[description]{font=\normalfont\itshape,leftmargin=2em}

\RequirePackage{fancyhdr} 
\pagestyle{fancy} 
\renewcommand{\headrulewidth}{0pt} 
\fancyhf{} 
\fancyfoot[C]{\addfontfeatures{Numbers={Uppercase,Monospaced}}\small\thepage}

\RequirePackage{hyperref}

\hypersetup{
  hidelinks,
  breaklinks=true
}
\urlstyle{rm}

\def\UrlBreaks{\do\/\do\-\do\_\do\%\do\0\do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9}

\renewcommand{\figureautorefname}{мал.}
\renewcommand{\tableautorefname}{табл.}
\renewcommand{\pageautorefname}{ст.}

\providecommand{\sups}[1]{{\addfontfeatures{VerticalPosition=Superior}#1}}
\providecommand{\subs}[1]{{\addfontfeatures{VerticalPosition=Inferior}#1}}
\providecommand{\numr}[1]{{\addfontfeatures{VerticalPosition=Numerator}#1}}
\providecommand{\dnom}[1]{{\addfontfeatures{VerticalPosition=Denominator}#1}}
\providecommand{\sinf}[1]{{\addfontfeatures{VerticalPosition=ScientificInferior}#1}}
\providecommand{\ordn}[1]{{\addfontfeatures{VerticalPosition=Ordinal}#1}}

