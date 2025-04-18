\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EM-Calligraphic}[2025/03/24 EM-Type document class]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax

\LoadClass[11pt]{article} 

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

\setmainfont[%
  Ligatures=TeX,
  Numbers={Lowercase,Proportional},
  SmallCapsFeatures={LetterSpace=2,Letters=UppercaseSmallCaps}
]{Piazzolla}

%------

\RequirePackage{setspace}

\setstretch{1.2}

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
\UseTblrLibrary{booktabs,siunitx}

\AtBeginEnvironment{tabular}{\addfontfeatures{Numbers={Uppercase,Monospaced}}\RaggedRight}
\AtBeginEnvironment{tblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}\RaggedRight}
\AtBeginEnvironment{longtblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}\RaggedRight}
\apptocmd{\tableofcontents}{\vspace{7.2pt plus 0.5ex minus 0.1ex}}{}{}

%------

\RequirePackage[compact]{titlesec}
\RequirePackage{titletoc}

%------

\titleformat{\section}{\fontsize{13pt}{15pt}\itshape\addfontfeatures{Numbers=Uppercase}}{}{0em}{}
\titleformat{\subsection}{\fontsize{12pt}{13.8pt}\itshape\addfontfeatures{Numbers=Uppercase}}{}{0em}{}

%------

\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus.2ex}

%------

\titlecontents{section}%
  [1.5em]%
  {\vspace{7.2pt plus 0.5ex minus 0.1ex}\scshape\addfontfeatures{Numbers=Uppercase}}%
  {{\addfontfeatures{Numbers={Lowercase,Monospaced}}\contentslabel{1.5em}}}%
  {\hspace*{-1.5em}}%
  {\titlerule*{}\addfontfeatures{Numbers={Lowercase,Monospaced}}\contentspage}

\titlecontents{subsection}%
  [4em]%
  {\addfontfeatures{Numbers=Uppercase}}%
  {{\addfontfeatures{Numbers={Lowercase,Monospaced}}\contentslabel{2.5em}}}%
  {\hspace*{-2.5em}}%
  {\titlerule*[0.8em]{.}\addfontfeatures{Numbers={Lowercase,Monospaced}}\contentspage}

%------

\RequirePackage{titling} 

\setlength{\droptitle}{-4\baselineskip} 

\pretitle{\begin{flushleft}\fontsize{15pt}{17.25pt}\addfontfeatures{Numbers=Uppercase}\itshape}
\posttitle{\par\end{flushleft}}

\preauthor{\begin{flushleft}\fontsize{13pt}{15pt}\addfontfeatures{Numbers=Uppercase}\itshape}
\postauthor{\par\end{flushleft}}

\predate{\begin{flushleft}\fontsize{13pt}{15pt}\addfontfeatures{Numbers=Uppercase}\itshape}
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

\RequirePackage[%
	backend=biber, 
	citestyle=numeric, 
	bibstyle=numeric,
	sorting=none
]{biblatex}

\addbibresource{main.bib} 

\RequirePackage{csquotes}
\RequirePackage{quoting}

\quotingsetup{%
  leftmargin=2em,
  rightmargin=2em,
  indentfirst=false,
  vskip=7.2pt plus 0.5ex minus 0.1ex
}

\renewcommand*{\quotingfont}{\small}

%------

\RequirePackage{caption}
\RequirePackage{subcaption}

\captionsetup*{%
  font=small,
  format=plain,
  labelfont=sc,
  justification=RaggedRight,
  textformat=period, 
  skip=0.5em
}

\subcaptionsetup*{%
  font=small,
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

\RequirePackage[%
  mark=fnsymbol,
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
  font=\addfontfeatures{Numbers=Monospaced}
}

\setlist[enumerate,1]{%
  label=\arabic*.,
  ref=\arabic*,
  topsep=7.2pt plus 0.5ex minus 0.1ex,
  leftmargin=2em
}

\setlist[enumerate,2]{%
  label=\arabic{enumi}.\arabic{enumii},
  ref=\arabic{enumi}.\arabic{enumii},
  topsep=3.6pt plus 0.25ex minus 0.05ex,
  leftmargin=*
}

\setlist[enumerate,3]{%
  label=\arabic{enumi}.\arabic{enumii}.\arabic{enumiii},
  ref=\arabic{enumi}.\arabic{enumii}.\arabic{enumiii},
  topsep=1.8pt plus 0.125ex minus 0.025ex,
  leftmargin=*
}

\setlist[itemize,1]{%
  topsep=7.2pt plus 0.5ex minus 0.1ex,
  leftmargin=2em
}

\setlist[itemize,2]{%
  topsep=3.6pt plus 0.25ex minus 0.05ex,
  leftmargin=*
}

\setlist[itemize,3]{%
  topsep=1.8pt plus 0.125ex minus 0.025ex,
  leftmargin=*
}

\setlist[description]{%
  topsep=7.2pt plus 0.5ex minus 0.1ex,
  font=\normalfont\itshape,
  leftmargin=2em
}

%------

\providecommand{\CurrentHeading}{}

\providecommand{\Heading}[1]{%
  \renewcommand{\CurrentHeading}{#1}% 
}

\providecommand{\HeaderText}{\textsc{\MakeLowercase\CurrentHeading}}

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

\hypersetup{%
  hidelinks,
  breaklinks=true
}
\urlstyle{rm}

\def\UrlBreaks{\do\/\do\-\do\_\do\%\do\0\do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9}

\renewcommand{\figureautorefname}{мал.}
\renewcommand{\tableautorefname}{табл.}
\renewcommand{\pageautorefname}{ст.}

%------
