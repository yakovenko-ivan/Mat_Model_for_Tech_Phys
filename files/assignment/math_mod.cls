% Latex Document Class used exclusively by Engenius UA 
% (c) 2018, Diogo Correia and João Santos, MIT Licensed
% Original Repository: https://github.com/dvcorreia/engenius-ua-latex-template
%

% Define Document preset and configurations ---------------------
\LoadClass[10pt]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{engenius}[2018/11/07 Engenius Latex Custom Class]

% Packages ------------------------------------------------------

\RequirePackage{blindtext}
\RequirePackage{float}

% Page Layout
\RequirePackage{titlesec}

% Fonts and Language

% Output Font Encoding, add support to accented chars
\RequirePackage[T1]{fontenc}
\RequirePackage[T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
%\RequirePackage{tempora}
%\RequirePackage{tex-gyre}
\RequirePackage{AlegreyaSans}

% Allow User to type accented char directly from keyboard

%\RequirePackage[latin1]{inputenc}
\RequirePackage[russian]{babel}

% Postscript Version of Latin Modern Default Font
%\RequirePackage{kpfonts}

% Document Margins
\RequirePackage[left=0.75in,right=0.75in,top=0.75in,bottom=1.5in]{geometry}

% Header/Footers
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

% Column Uttility
\RequirePackage{multicol}
\RequirePackage{ragged2e}
\RequirePackage{datetime} \yyyymmdddate
\RequirePackage[nottoc]{tocbibind}

% Listings highlighting
\RequirePackage{listings}
\RequirePackage[dvipsnames]{xcolor}

\RequirePackage{hyperref}
\hypersetup{
	colorlinks=true,
	linkcolor=blue,
	filecolor=magenta,      
	urlcolor=cyan
}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
	backgroundcolor=\color{backcolour},   
	commentstyle=\color{codegreen},
	keywordstyle=\color{magenta},
	numberstyle=\tiny\color{codegray},
	stringstyle=\color{codepurple},
	basicstyle=\ttfamily\footnotesize,
	breakatwhitespace=false,         
	breaklines=true,                 
	captionpos=b,                    
	keepspaces=true,                 
	numbers=left,                    
	numbersep=5pt,                  
	showspaces=false,                
	showstringspaces=false,
	showtabs=false,                  
	tabsize=2
}

\lstset{style=mystyle}

\RequirePackage{mdframed}
\RequirePackage[fleqn]{amsmath}
\RequirePackage{amssymb,amsthm}  % assumes amsmath package installed

% Page Layout Definition -----------------------------------------
\titleformat{\section}{\Large\bfseries}{\thesection}{0.75em}{}%[\titlerule]
\titleformat{\subsection}{\large\bfseries}{\thesubsection}{0.5em}{}
\titleformat{\subsubsection}{\normalsize\bfseries}{\thesubsubsection}{0.5em}{}

% Department Identification Colors

\RequirePackage{color}

% Declaration Options ---------------------------------------------
\DeclareOption{FN}{
  \def\dep@textA{Факультет "Фундаментальные науки"}
  \def\dep@textB{Кафедра "Физика", ФН-4}}

% Default
\ExecuteOptions{default}

\ProcessOptions

% Departments definitions
\def\depoffn{Кафедра Физики}
\def\depoffncolor{\dep@ec\textcolor[RGB]{\dep@red,\dep@green,\dep@blue}{\vrule width 14mm height 1.000mm depth 0mm}}

% Commands and Variables -----------------------------------------
\def\ualogo{src/BMSTU.png}
\def\engeniuslogo{src/FN.png}
\def\UA{МГТУ им. Н.Э Баумана}

\def\mydate{\leavevmode\hbox{\twodigits\day-\twodigits\month-\the\year}}
\def\twodigits#1{\ifnum#1<10 0\fi\the#1}

\newcommand{\email}[1]{\href{mailto:#1}{#1}}

\bibliographystyle{unsrt}

% Code snippets ----------------------------------------------------

\RequirePackage{minted}
\RequirePackage[skins,listings]{tcolorbox}

\newtcolorbox{codebox}[1]{
colback=white,colframe=black,fonttitle=\sffamily\bfseries\normalsize,
title=#1}

\setminted{fontsize=\footnotesize,breaklines,breakanywhere,fontfamily=helvetica}

% Page Header and Footer -----------------------------------------
\RequirePackage{graphicx}
\RequirePackage{scalerel}

% Define Header and Footer Style --------------------------
\pagestyle{fancy}
\fancyhf{}

\fancyhead[L]{
    \raisebox{-0.25\height}{\includegraphics[height=0.75in]{\engeniuslogo}}
    \space\space\space
    \raisebox{-0.25\height}{\includegraphics[height=0.75in]{\ualogo}}
    \\
}
\fancyhead[R]{
	\hspace*{8cm} \centering \Large{\textbf{МГТУ им. Н.Э. Баумана}} \\ \hspace*{\fill} \Large \textbf{\dep@textA} \\ \hspace*{8cm} \large \textbf{\dep@textB}
	\\
}
\fancyfoot[R]{\footnotesize Page \thepage\ of \pageref{LastPage}}
%\fancyfoot[R]{\thepage}
\fancyfoot[L]{ 
\footnotesize{\textbf{Группа ФН4-\@groupnumber М. Вариант №\@variant.}}
}
\renewcommand{\footrulewidth}{0.5pt}

\newenvironment{problem}[2][Задача]
    { \begin{mdframed}[backgroundcolor=gray!20] \textbf{#1 #2} \\}
    {  \end{mdframed}}

%\renewcommand*{\rmdefault}{\AlegreyaSans}
%\renewcommand*{\familydefault}{\rmdefault}

% Maketitle renewcommand -----------------------------------------

\newcommand{\titletwo}[1]{\gdef\@titletwo{#1}}
\newcommand{\version}[1]{\gdef\@version{#1}}
\newcommand{\groupnumber}[1]{\gdef\@groupnumber{#1}}
\newcommand{\variant}[1]{\gdef\@variant{#1}}

\renewcommand{\maketitle}{

    % Bar
    \smash{}
    \vspace{1.25cm}
    
    % Title
    \begin{center}
	{\LARGE \textbf{\textit{Математическое моделирование в технической физике}}}

    \end{center}
    
     % Title
    \begin{multicols}{2}
    \begin{FlushLeft}
    {\Large \textbf{{\@title}} \\ \large{"\@titletwo"}\columnbreak}
    \end{FlushLeft}
    
    % Date
    \begin{FlushRight}
    {\large{Задание выполнено \textbf{\mydate}} \\
     \large{Версия} \@version 
    }
    \end{FlushRight}
    \end{multicols}
 
    
%    \begin{center}
%    {\LARGE \textbf{\@title} \\ \Large\textbf{\@titletwo}}
%    \end{center}
    
    
    % Authors
    \begin{center}
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}
    \end{center}

    \begin{center}
    {\large
        \lineskip .5em%
        {ФН4-\textcolor{Red}{\textbf{\@groupnumber}}М, Вариант №\textcolor{Red}{\textbf{\@variant}}}
    }
    \end{center}    

    \noindent\hrulefill
    \vspace*{1\baselineskip}
}




