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

\linespread{1.15}

\RequirePackage{microtype}
\microtypesetup{
  protrusion=true,
  expansion=true
}

\usepackage{ragged2e}
\RaggedRight

\setlength{\parindent}{2em}

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

\titlecontents{section}
    [0em] 
    {\fontsize{12pt}{16pt}\itshape} 
    {\hspace*{2em}\contentslabel{2em}} 
    {\hspace*{2em}} 
    {\rmfamily\upshape\qquad\thecontentspage} 
  \titlecontents{subsection}
    [2.5em] 
    {\fontsize{11pt}{15pt}\itshape} 
    {\hspace*{4em}\contentslabel{4em}} 
    {\hspace*{4em}} 
    {\rmfamily\upshape\qquad\thecontentspage} 

\RequirePackage{titling} 

\setlength{\droptitle}{-4\baselineskip} 

\pretitle{\begin{flushleft}\fontsize{14pt}{18pt}\addfontfeatures{Numbers=Uppercase}\itshape}
\posttitle{\par\end{flushleft}}

\preauthor{\begin{flushleft}\fontsize{12pt}{16pt}\itshape}
\postauthor{\par\end{flushleft}}

\predate{\begin{flushleft}\fontsize{12pt}{16pt}\addfontfeatures{Numbers=Uppercase}\itshape}
\postdate{\par\end{flushleft}}

\patchcmd{\maketitle}{plain}{empty}{}{} 

\RequirePackage[runin]{abstract} 

\renewcommand{\abstractnamefont}{\small\bfseries} 
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

\addbibresource{main.bib} 

\RequirePackage{csquotes}
\RequirePackage{quoting}

\quotingsetup{leftmargin=2em,rightmargin=2em,indentfirst=false,vskip=6.9pt plus 0.5ex minus 0.1ex}
\renewcommand*{\quotingfont}{\small}

\RequirePackage{caption}
\RequirePackage{subcaption}

\captionsetup*{font={small}, format=plain, labelfont=sc, justification=RaggedRight, textformat=period, skip=6pt}
\subcaptionsetup*{font={small},labelsep=colon, labelfont=sc, labelformat=simple, justification=RaggedRight, textformat=period}

\captionsetup*[figure]{name=мал.}
\captionsetup*[table]{name=табл.}

\RequirePackage{enumitem} 

\setlist{noitemsep} 

\setlist[enumerate]{label=\arabic*., label*=\arabic*.,labelsep=0.5em}
\setlist[enumerate,1]{leftmargin=*,topsep=6.9pt plus 0.5ex minus 0.1ex}
\setlist[enumerate,2]{leftmargin=*}

\setlist[itemize]{labelsep=0.5em}
\setlist[itemize,1]{leftmargin=*,topsep=6.9pt plus 0.5ex minus 0.1ex}
\setlist[itemize,2]{leftmargin=*}

\setlist[description]{font=\normalfont\itshape,topsep=6.9pt plus 0.5ex minus 0.1ex,leftmargin=2em}

\RequirePackage{fancyhdr} 
\pagestyle{fancy} 
\renewcommand{\headrulewidth}{0pt} 
\fancyhf{} 
\fancyfoot[C]{\addfontfeatures{Numbers={Uppercase}}\small\thepage}

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
