\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EM-Essay}[2025/03/24 EM-Type document class]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax

\LoadClass{article} 

%----------------------------------------------------------------------------------------

\RequirePackage[
  a4paper,
  top=27.4mm,
  bottom=27.4mm,
  left=24.8mm,
  textwidth=122mm,
  marginparsep=6.2mm,
  marginparwidth=32.2mm,
  headsep=2\baselineskip,
  headheight=\baselineskip
]{geometry}

%------

\RequirePackage{fontspec}

\setmainfont[
  Ligatures=TeX,
  Numbers={Lowercase,Proportional},
  SmallCapsFeatures={LetterSpace=3,Letters=UppercaseSmallCaps}
]{Literata}

%------

\RequirePackage{setspace}

\onehalfspacing

%------

\RequirePackage{polyglossia}

\setmainlanguage{ukrainian}
\setotherlanguages{english,russian}

%------

\RequirePackage{microtype}

%------

\setlength{\parindent}{2em}

%------

\RequirePackage{tabularray}
\UseTblrLibrary{booktabs,siunitx}

\AtBeginEnvironment{tabular}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\AtBeginEnvironment{tblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\AtBeginEnvironment{longtblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\apptocmd{\tableofcontents}{\vspace{\baselineskip}}{}{}

%------

\RequirePackage[compact]{titlesec}
\RequirePackage{titletoc}

%------

\titleformat{\section}{\large\itshape}{}{0em}{}
\titleformat{\subsection}{\fontsize{11pt}{13pt}\itshape}{}{0em}{}

%------

\titlespacing*{\section}{0pt}{3.75ex plus 1ex minus .2ex}{2.45ex plus .2ex}
\titlespacing*{\subsection}{0pt}{3.5ex plus 1ex minus .2ex}{1.6ex plus .2ex}

%------

\titlecontents{section}%
  [1.5em]%
  {\vspace{7.5pt plus 0.5ex minus 0.1ex}\itshape\addfontfeatures{Numbers={Uppercase,Monospaced}}}%
  {\contentslabel{1.5em}}%
  {\hspace*{-1.5em}}%
  {\titlerule*{}\upshape\contentspage}

\titlecontents{subsection}%
  [3.8em]%
  {\small\addfontfeatures{Numbers={Uppercase,Monospaced}}}%
  {\contentslabel{2.5em}}%
  {\hspace*{-2.5em}}%
  {\titlerule*[1em]{.}\upshape\contentspage}

%------

\RequirePackage{titling} 

\setlength{\droptitle}{-4\baselineskip} 

\pretitle{\begin{flushleft}\Large\addfontfeatures{Numbers=Uppercase}\itshape}
\posttitle{\par\end{flushleft}}

\preauthor{\begin{flushleft}\large\addfontfeatures{Numbers=Uppercase}\itshape}
\postauthor{\par\end{flushleft}}

\predate{\begin{flushleft}\large\addfontfeatures{Numbers={Uppercase,Monospaced}}\itshape}
\postdate{\par\end{flushleft}}

\patchcmd{\maketitle}{plain}{empty}{}{} 

%------

\RequirePackage[runin]{abstract} 

\renewcommand{\abstractnamefont}{\small\scshape} 
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

\addbibresource{main.bib} 

\RequirePackage{csquotes}
\RequirePackage{quoting}

\quotingsetup{leftmargin=2em,rightmargin=2em,indentfirst=false,vskip=7.5pt plus 0.5ex minus 0.1ex}
\renewcommand*{\quotingfont}{\small}

%------

\RequirePackage{caption}
\RequirePackage{subcaption}

\captionsetup*{font={small}, format=plain, labelfont=sc, justification=RaggedRight, textformat=period, skip=6pt}
\subcaptionsetup*{font={small},labelsep=colon, labelfont=sc, labelformat=simple, justification=RaggedRight, textformat=period}

\DeclareCaptionStyle{sidestyle}{%
  font={footnotesize}, 
  format=plain, 
  labelfont=sc, 
  justification=RaggedRight, 
  textformat=period
}

\captionsetup*[figure]{name=Мал.}
\captionsetup*[table]{name=Табл.}

\RequirePackage[mark=fnsymbol,font=rm,size=footnote,shape=up,per=none,Ragged]{sidenotesplus}

\DeclareCaptionStyle{marginfigure}{style=sidestyle}
\DeclareCaptionStyle{margintable}{style=sidestyle}

\DeclareCaptionStyle{sidecaption}{style=sidestyle}
\captionsetup*[sidecaption]{style=sidestyle}

%------

\RequirePackage{enumitem} 

\setlist{noitemsep} 

\setlist[enumerate]{labelsep=0.5em}

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

\setlist[itemize]{%
  labelsep=0.5em
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
  font=\normalfont\itshape,
  leftmargin=2em
}

%------

\RequirePackage{fancyhdr} 
\pagestyle{fancy}

\renewcommand{\headrulewidth}{0pt} 

\fancyhf{} 

\fancyheadoffset[R]{\marginparsep + \marginparwidth}

\makeatletter
\providecommand{\myheadertext}{\textsc{\MakeLowercase\@title}}
\makeatother

\fancyhead[R]{\small\myheadertext\quad\addfontfeatures{Numbers={Uppercase,Monospaced}}\thepage}

\fancypagestyle{plain}{
    \fancyhf{}
    \fancyhead[R]{\small\myheadertext\quad\addfontfeatures{Numbers={Uppercase,Monospaced}}\thepage}
}

%------

\providecommand{\sups}[1]{{\addfontfeatures{VerticalPosition=Superior}#1}}
\providecommand{\subs}[1]{{\addfontfeatures{VerticalPosition=Inferior}#1}}
\providecommand{\numr}[1]{{\addfontfeatures{VerticalPosition=Numerator}#1}}
\providecommand{\dnom}[1]{{\addfontfeatures{VerticalPosition=Denominator}#1}}
\providecommand{\sinf}[1]{{\addfontfeatures{VerticalPosition=ScientificInferior}#1}}
\providecommand{\ordn}[1]{{\addfontfeatures{VerticalPosition=Ordinal}#1}}

%------ USER PACKAGES ------%

\RequirePackage[detect-all]{siunitx}
\RequirePackage{graphicx}
\graphicspath{ {./Images/} }

%------ 

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

%------
