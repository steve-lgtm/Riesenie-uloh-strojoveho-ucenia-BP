%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Class identification.
%%
%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kpithesis}[2016/06/18 KPI thesis class, v 0.1]

\typeout{}
\typeout{***********************************************}
\typeout{***********************************************}
\typeout{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Using article class as base.
%%
%%%%%
\PassOptionsToClass{a4paper,12pt,oneside}{report}
\LoadClass{report}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Additional packages, and their options.
%%
%%%%%

% titlesec for modification of chapters and sections
\RequirePackage{titlesec}
\titleformat{\chapter}{\huge}{\textbf\thechapter}{20pt}{\huge\textbf}

% sets the document geometry
\RequirePackage[
	a4paper,
	width=150mm,
    top=25mm,
    bottom=25mm,
    bindingoffset=6mm
]{geometry}

\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.pdf,.png,.jpg,.mps}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage[
    figure,
    table]{totalcount}

%% Numeric citations and sorting by year (descending), name and title
\RequirePackage[style=numeric,sorting=ydnt]{biblatex}
%\DefineBibliographyStrings{slovak}{%
    %bibliography = {Literatúra}
%}

% 'zhusti' polozky obsahu
\RequirePackage{parskip}

\RequirePackage[
   unicode,
   %backref,
   pdfusetitle,
   %pdfusekeywords,
   pdftoolbar=true,
   pdfmenubar=true,
   pdfwindowui=true,
   bookmarksopenlevel={0},
   bookmarksnumbered,
   bookmarksopen,
   pdfhighlight={/P},
   colorlinks,
   citecolor=magenta,
   bookmarksnumbered,
   %pdfkeywords = {\LaTeX},
   %pdfcreator = {\LaTeX\ with package hyperref},
   %pdftitle={Odporúčania pre písanie záverečných prác},
   %pdfauthor={Mr. Manager},
   %pdfkeywords={},
   %pdfsubject={Záverečná práca},
   baseurl={http://www.tuke.sk}
]{hyperref}


% popisky ku obrazkom a tabulkam
\def\figurename{Obrázok}
\def\tabname{Tabuľka}
\def\refname{Zoznam použitej literatúry}
\def\acrlistname{Zoznam skratiek}

%% Vlastná hlavička
\RequirePackage{fancyhdr}
\setlength{\headheight}{15pt} 

% nastavenie hlavičky pre hlavnú časť práce
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter.\ #1}{}}
\fancyhf{}
\lhead{\slshape \nouppercase{\leftmark}}
\rhead{\thepage}
\renewcommand{\headrulewidth}{0.7pt}

% slovnik terminov a skratiek
\RequirePackage[
    acronyms,
	nonumberlist,
	noredefwarn
]{glossaries}  
\makeglossaries % prikaz na vytvorenie suboru .glo


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Variable definitions and default values: these variables should be defined by
%% the user (somewhere in the preamble). For example, to put the abstract into
%% the thesis, the thesis writer should type the following somewhere in the
%% preamble (before the `\begin{document}` or `\frontmatter` commands are
%% called):
%%
%%      \abstract{This is my abstract.}
%%
%% See below (in the comments starting with 'DOCVAR: ') for a list of all
% variables
%% the thesis writer is expected to use.
%%
%%%%%

% DOCVAR: college (The name of the thesis writer's college)
\newcommand{\@college}{Technická univerzita v košiciach}
\newcommand{\@college@city}{Košice}
\newcommand{\college}[2]{
	\renewcommand{\@college}{#1}
	\renewcommand{\@college@city}{#2}
}

% DOCVAR: faculty (The name of the thesis writer's faculty)
\newcommand{\@faculty}{Fakulta elektrotechniky a informatiky}
\newcommand{\faculty}[1]{\renewcommand{\@faculty}{#1}}


% DOCVAR: department (name of the thesis writer's department)
\newcommand{\@department}{Katedra počítačov a informatiky}
\newcommand{\@department@shortcut}{KPI}
\newcommand{\department}[2]{
	\renewcommand{\@department}{#1}
	\renewcommand{\@department@shortcut}{#2}
}

% DOCVAR: supervisor (name of the thesis writer's supervisor)
\newcommand{\@supervisor}{}
\newcommand{\supervisor}[1]{\renewcommand{\@supervisor}{#1}}

% DOCVAR: consultant (name of the thesis writer's consultant)
\newcommand{\@consultant}{}
\newcommand{\consultant}[1]{\renewcommand{\@consultant}{#1}}

% DOCVAR: field of study
\newcommand{\@fieldofstudy}{9.2.1. Informatika}
\newcommand{\fieldofstudy}[1]{\renewcommand{\@fieldofstudy}{#1}}

% DOCVAR: study programme
\newcommand{\@studyprogramme}{Informatika}
\newcommand{\studyprogramme}[1]{\renewcommand{\@studyprogramme}{#1}}

% DOCVAR: thesis (type of the thesis)
\newcommand{\@thesis}{Bakalárska práca}
\newcommand{\thesis}[1]{\renewcommand{\@thesis}{#1}}

% DOCVAR: declaration text
\newcommand{\@declaration}{Vyhlasujem, že som záverečnú prácu vypracoval(a) samostatne s~použitím uvedenej odbornej literatúry.}
\newcommand{\declaration}[1]{\renewcommand{\@declaration}{#1}}

% DOCVAR: date (declaration date)
\newcommand{\@submissiondate}{}
\newcommand{\submissiondate}[3]{
	\newcommand{\@submissionday}{#1}
	\newcommand{\@submissionmonth}{#2}
	\newcommand{\@submissionyear}{#3}
}

% DOCVAR: abstract of the thesis
\newcommand{\@abstract}{}
\renewcommand{\abstract}[2]{%
    \newcommand{\@abstract@en}{#1}%
    \newcommand{\@abstract@sk}{#2}%
}

% DOCVAR: thesis keywords
\newcommand{\@keywords}{}
\newcommand{\keywords}[2]{%
    \newcommand{\@keywords@en}{#1}%
    \newcommand{\@keywords@sk}{#2}%
}

% DOCVAR: thesis (type of the thesis)
\newcommand{\@acknowledgment}{Na tomto mieste by som sa rád poďakoval svojmu vedúcemu záverečnej práce za pripomienky a~odbornú pomoc.}
\newcommand{\acknowledgment}[1]{\renewcommand{\@acknowledgment}{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Front matter
%%
%% - outside and inside front cover
%% - title leaf
%% Do not include the date of make!
%% Institution + department.
%% Names of referees. (optional)
%% Degree.
%% Date of submission and defense. (optional)
%% Place and date of publication and publishers (and other info by them).
%%%%%
\newcommand{\frontmatter}{
	\pagenumbering{roman}
	\frontpage
	\titlepage
	\abstractpage

    % thesis detail specification
    \thispagestyle{empty}
    \vspace*{\fill}
    \centerline{Tu vložte zadávací list}
    \vspace*{\fill}
    \newpage

    \declarationpage
    \acknowledgmentpage

    \pagestyle{plain}
    \tableofcontents
    \newpage

    % show list of figures only if there are some
    \iftotalfigures%
        \listoffigures%
        \newpage%
    \fi
    
    % show list of tables only if there are some
    \iftotaltables%
        \listoftables%
        \newpage%
    \fi

    \pagenumbering{arabic}
    \pagestyle{fancy}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Front page component
%%
%%%%%
\newcommand{\frontpage}{

	\thispagestyle{empty}
	%\pagestyle{empty}

	\begin{center}
		{\Large \textbf{\@college}}

		{\Large \textbf{\@faculty}}

		\vfill

  		{\LARGE \textbf{\@title}}

  		\bigskip

  		{\large \textbf{\@thesis}}
	\end{center}

	\vfill

	{\Large \textbf{\@submissionyear}} \hfill {\Large \textbf{\@author}}
	
	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Abstract component
%%
%%%%%
\newcommand{\abstractpage}{
    \thispagestyle{empty}

	\noindent\textbf{Abstrakt v SJ}\par\@abstract@sk\\[5mm]
	\noindent\textbf{Kľúčové slová}\\
	\@keywords@sk

	\noindent\textbf{Abstrakt v AJ}\par\@abstract@en\\[5mm]
	\noindent\textbf{Kľúčové slová}\\
	\@keywords@en

    \newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Declaration component
%%
%%%%%
\newcommand\declarationpage{
    \thispagestyle{empty}

    \vglue0pt
    \vfill
    \noindent\textbf{Čestné vyhlásenie}

    \bigskip

    \@declaration

    \bigskip

    \noindent \@college@city,~\@submissionday.\@submissionmonth.\@submissionyear \hfill
    \begin{tabular}[t]{c}
        \hbox to 50mm {\dotfill} \\ \textit{\small Vlastnoručný podpis}
    \end{tabular}
    \newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Declaration component
%%
%%%%%
\newcommand\acknowledgmentpage{%
    \thispagestyle{empty}%
    \vglue0pt\vfill%

    \noindent\textbf{Poďakovanie}%

    \bigskip

    \@acknowledgment

    \newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Title page component
%%
%%%%%
\renewcommand{\titlepage}{

	\thispagestyle{empty}

	\begin{center}
		{\Large \textbf{\@college}}

		{\Large \textbf{\@faculty}}

 		\vfill

    	{\LARGE \textbf{\@title}}

    	\bigskip

    	{\large \textbf{\@thesis}}%
	\end{center}

 	\vfill

	{\normalsize
		\noindent
		\begin{tabular}{p{.24\textwidth}p{.66\textwidth}}
			Štúdijný program:& \@studyprogramme \\
			Štúdijný odbor:& \@fieldofstudy \\
			Školiace pracovisko:& \@department~(\@department@shortcut) \\
			Školiteľ:& \@supervisor \\
			Konzultant:& \@consultant \\
		\end{tabular}

		\vspace{2\baselineskip}

		{\Large \textbf{\@college@city{} \@submissionyear}} \hfill {\Large \textbf{\@author}}
	}

	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Fonts
%%
%%%%%

% Font used for thesis is TeX Gyre Pagella.
% Note: You might need to install it first.
%\renewcommand\rmdefault{psb}

%\RequirePackage{lmodern,textcase}
%\RequirePackage{palatino}
\RequirePackage{tgpagella}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Line spacing
%%
%%%%%

% One-and-a-half spacing (required by board of graduate studies).
% (Should remove this for Computer Laboratory technical report.)
%\onehalfspacing
