% Author: Vincent Van Schependom - 2025
%
% KU Leuven Faculty of Engineering Science
% template, adapted from the Kulak Article template by:
% 		* Stijn Rebry - Kulak Article
%		* Brent De Blaere - huisstijl campus Brugge
% 		* Andries Vansweevelt - nieuwe huisstijl KU Leuven
%
% Faculteit Ingenieurswetenschappen Logo vectorised by Vincent Van Schependom.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kul-eng-article}[2025/04/29 Article class for KU Leuven Faculty Of Engineering Science]
\providecommand{\Logo}{irLogo}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage[a4paper]{geometry}

%\RequirePackage{arev}
%\renewcommand*\familydefault{\sfdefault} %% Only if the base font of the document is to be sans serif
\RequirePackage[T1]{fontenc}
\RequirePackage{hyperref}
\RequirePackage{titling}
\RequirePackage{multicol}
\RequirePackage{graphicx,xcolor}
	\definecolor{kulgroen}{rgb}{0.1137,0.5529,0.6902} %Oude kleur
	\definecolor{kullichtblauw}{RGB}{106,194,238}
	\definecolor{grijs}{rgb}{0.25,0.25,0.25}
	\definecolor{KULblauw1}{RGB}{29,141,176} %Hoofdblauw nieuwe huisstijl
	\definecolor{KULblauw2}{RGB}{220,231,240} %Secundair blauw: heel lichtblauw
	\definecolor{KULblauw3a}{RGB}{82,189,236} %Tertiair blauw (accent): licht
	\definecolor{KULblauw3b}{RGB}{30,110,135} %Tertiair blauw (accent): donker
	\definecolor{KULblauw3c}{RGB}{12,73,92} %Tertiair blauw (accent): donkerst
\RequirePackage{lastpage}
\RequirePackage{tikz}
	\usetikzlibrary{arrows}
	\usetikzlibrary{decorations.pathmorphing}
	\usetikzlibrary{backgrounds}
	\usetikzlibrary{fit}
	\usetikzlibrary{shadows}
	\usetikzlibrary{positioning}
\makeatletter
%\newcommand\faculty[1]{\renewcommand\@faculty{#1}}
%\newcommand\@faculty{}
%\newcommand{\thefaculty}{\@faculty{}}
%\newcommand\group[1]{\renewcommand\@group{#1}}
%\newcommand\@group{}
%\newcommand{\thegroup}{\@group{}}
%\newcommand\subtitle[1]{\renewcommand\@subtitle{#1}}
%\newcommand\@subtitle{}
%\newcommand{\thesubtitle}{\@subtitle{}}
%\newcommand\institute[1]{\renewcommand\@institute{#1}}
%\newcommand\@institute{}
%\newcommand{\theinstitute}{\@institute{}}
\newcommand\address[1]{\renewcommand\@address{#1}}
\newcommand\@address{}
\newcommand{\theaddress}{\@address{}}
\newcommand\location[1]{\renewcommand\@location{#1}}
\newcommand\@location{}
\newcommand{\thelocation}{\@location{}}
%\newcommand\emailaddress[1]{\renewcommand\@emailaddress{#1}}
%\newcommand\@emailaddress{}
%\newcommand{\theemailaddress}{\@emailaddress{}}
\makeatother
%\RequirePackage[lmargin=3.0cm, rmargin=2.cm,tmargin=3cm,bmargin=1.50cm]{geometry}
\setlength{\topmargin}{-1in}
\addtolength{\topmargin}{1.5cm}
\setlength{\oddsidemargin}{-1in}
\addtolength{\oddsidemargin}{3cm}
\setlength{\textwidth}{16cm}
\setlength{\textheight}{23.5cm}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\setlength{\headheight}{1.5cm}
\lhead{}
\chead{}
\rhead{\begin{tikzpicture}[inner sep=0mm]
         \fill[KULblauw3a] (-0.15,0) rectangle (0,1.2);
         \node[anchor=west] at ( 0.5,0.6) {\includegraphics[height=1.5cm]{kuleuvenSedes}};
      \end{tikzpicture}}
\lfoot{\begin{tabular}[b]{@{}l@{}}
    \footnotesize{\thetitle}\\
    \footnotesize{\theauthor}
  \end{tabular}}
\cfoot{}
\rfoot{\footnotesize{\thepage/\pageref{LastPage}}}

\renewcommand{\maketitle}{
\begin{tikzpicture}[remember picture,overlay]
	\node at (current page.south west)
	{
		\begin{tikzpicture}[remember picture, overlay,inner sep=0mm]
			\fill[KULblauw3a] (17.5,26.67) rectangle (17.65,27.87);
			\node[anchor=north west] at ( 3.0,28.2) {\includegraphics[height=2.5cm]{\Logo}};
			\node[anchor=north east] at ( 19,28) {\includegraphics[height=1.5cm]{kuleuvenSedes}};
			\node[anchor=east] at (17,27.27) {
				\footnotesize\begin{tabular}{@{}r@{}}\theaddress\end{tabular}
			};
			\node[anchor=south east] at (19,24) {
				\begin{tabular}{@{}r@{}}
					\large\bf\thetitle\\[.3cm]
					\large\theauthor\vphantom{Ky}
			\end{tabular}};
			\node[anchor=south west] at (3,24) {
				\begin{tabular}{@{}l@{}}
					\large \thedate\vphantom{Ky}
			\end{tabular}};
			\draw  (3,23.7) -- ( 19,23.7);
		\end{tikzpicture}
	};
\end{tikzpicture}
\vspace*{1.5cm}\\
{}
\thispagestyle{empty}
}