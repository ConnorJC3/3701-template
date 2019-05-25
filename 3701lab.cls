\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{3701lab}[2019/05/24 Template class for EEL3701C lab reports]
\LoadClass[12pt]{report}

\RequirePackage{mathptmx}
\RequirePackage[includehead,left=0.5in,right=0.5in,top=0.5in,bottom=0.3in,headsep=-5.5pt]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titlesec}
\RequirePackage{anyfontsize}
\RequirePackage{xcolor}

\newcommand\upi[1]{\renewcommand\@upi{#1}}
\newcommand\@upi{\@latex@error{No \noexpand\upi given}\@ehc}
\newcommand\classnumber[1]{\renewcommand\@classnumber{#1}}
\newcommand\@classnumber{\@latex@error{No \noexpand\classnumber given}\@ehc}
\newcommand\labnumber[1]{\renewcommand\@labnumber{#1}}
\newcommand\@labnumber{\@latex@error{No \noexpand\labnumber given}\@ehc}
\definecolor{wordpurple}{RGB}{112, 48, 160}

\fancypagestyle{lab}{%
  \fancyhf{}
  \setlength{\headheight}{53pt}
  \fancyhead[L]{\footnotesize University of Florida \\[1pt] {\scriptsize Department of Electrical \& Computer Engineering} \\[3.5pt] Page \thepage/\pageref{LastPage} \\}
  \fancyhead[C]{\footnotesize \textbf{EEL3701} --- \textbf{Digital Logic \& Computer Systems} \\[1pt] {\small Revision \textcolor{wordpurple}{\textbf{1}}} \\[3.5pt] {\large Lab \@labnumber{} Report: \textbf{\@title}} \\}
  \fancyhead[R]{\footnotesize \@author \\[1pt] Class \#: \@classnumber \\[3.5pt] \@upi \\ \today}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{lab}

\titleformat{\section}[hang]{\fontsize{16pt}{4pt}\selectfont \bfseries}{}{0pt}{\rule{\textwidth}{1.5pt} \\[2pt] \vphantom{Q}}[\vspace{-\parskip} \rule{\textwidth}{1.5pt}]
\titlespacing{\section}{0pt}{-2.5pt}{-3pt}
\setlength{\parskip}{8pt}

\newenvironment{questions}{\section{PRE-LAB QUESTIONS OR EXERCISES}}{\newpage}
\newenvironment{problems}{\section{PROBLEMS ENCOUNTERED}}{}
\newenvironment{notmet}{\section{REQUIREMENTS NOT MET}}{}
\newenvironment{future}{\section{FUTURE WORK/APPLICATIONS}}{\newpage}
\newenvironment{requirements}{\section{PRE-LAB REQUIREMENTS {\fontsize{12pt}{4pt}\selectfont (Design, Schematic, ASM Chart, VHDL, etc.)}}}{}
