%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% File:     aghdpl-dr.cls           (LaTeX Document class option "aghdpl-dr")
%
% Authors: Marcin Szpyrka     (mszpyrka@agh.edu.pl)
%          Grzegorz J. Nalepa (gjn@agh.edu.pl)
%          Paweł Kłeczek      (p.l.kleczek@gmail.com)
%          Szymon Mikulicz    (czilukim@o2.pl)
%          Marcel Piszak      (marcel.piszak@wp.pl)
%          Teresa Makuch      (tesiamakuch@gmail.com)
%		   Michał Kmiecik	  (miszkoo@gmail.com)
%          AGH University of Science and Technology, Kraków, POLAND
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\message{*** [aghdpl-dr.cls] ---  (MSz, GJN, PK, SzM, MP, TM, MK)  v1.0.0 <11.09.2020>  ***}

\newif\ifpdflatex\pdflatexfalse
\NeedsTeXFormat{LaTeX2e} %
\ProvidesClass{aghdpl_dr}
\DeclareOption{pdflatex}{\pdflatextrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\LoadClass[a4paper,oneside,openright]{report}

\RequirePackage{newtxtext}
\RequirePackage{anyfontsize}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage[usenames]{color}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{mfirstuc}
\RequirePackage{setspace}

\RequirePackage[font=small, labelfont=bf, labelsep=period]{caption}
\RequirePackage{subcaption}
\RequirePackage{siunitx}
\RequirePackage{enumerate}
\RequirePackage{enumitem}
\RequirePackage[all,defaultlines=2]{nowidow} % Kontrola sierot i wdów - działa lepiej niż \widowpenalty i \clubpenalty

\geometry{lmargin=35mm, rmargin=25mm, tmargin=25mm, bmargin=25mm, foot=10mm, head=10mm}
\definecolor{Green}{rgb}{0.1,0.5,0.1}
\setlength{\parindent}{10mm}

\def\shorttitlePL#1       {\gdef\@shorttitlePL{#1}}
\def\shorttitleEN#1       {\gdef\@shorttitleEN{#1}}
\def\shortauthor#1        {\gdef\@shortauthor{#1}}
\def\titlePL#1            {\gdef\@titlePL{#1}}
\def\titleEN#1            {\gdef\@titleEN{#1}}
\def\facultyPL#1          {\gdef\@facultyPL{#1}}
\def\facultyEN#1          {\gdef\@facultyEN{#1}}
\def\thesistypePL#1       {\gdef\@thesistypePL{#1}}
\def\thesistypeEN#1       {\gdef\@thesistypeEN{#1}}
\def\supervisor#1         {\gdef\@supervisor{#1}}
\def\supervisorSec#1         {\gdef\@supervisorSec{#1}}
%\def\reviewer#1           {\gdef\@reviewer{#1}}
\def\acknowledgements#1   {\gdef\@acknowledgements{#1}}
\def\department#1         {\gdef\@department{#1}}
%\def\degreeprogrammePL#1  {\gdef\@degreeprogrammePL{#1}}
%\def\degreeprogrammeEN#1  {\gdef\@degreeprogrammeEN{#1}}
%\def\years#1              {\gdef\@years{#1}}
%\def\albumnum#1           {\gdef\@albumnum{#1}}
%\def\specialisationPL#1   {\gdef\@specialisationPL{#1}}
%\def\specialisationEN#1   {\gdef\@specialisationEN{#1}}
%\def\address#1            {\gdef\@address{#1}}
%\def\graduationyear#1     {\gdef\@graduationyear{#1}}
%\def\yearofstudy#1        {\gdef\@yearofstudy{#1}}
\def\summaryPL#1          {\gdef\@summaryPL{#1}}
\def\summaryEN#1          {\gdef\@summaryEN{#1}}
\def\sex#1                {\gdef\@sex{#1}}
\def\thesisplan#1         {\gdef\@thesisplan{#1}}
%\def\agree#1              {\gdef\@agree{#1}}
%\def\apprenticeship#1     {\gdef\@apprenticeship{#1}}

\newcommand{\ea}{\expandafter\ifstrequal\expandafter{\@sex}{m}{e}{a}}

\newcommand{\ya}{\expandafter\ifstrequal\expandafter{\@sex}{m}{y}{a}}

%\newcommand{\yesno}{\expandafter\ifstrequal\expandafter{\@agree}{t}{TAK}{NIE}}

\newcommand{\writesupervisors}{\expandafter\ifstrequal\expandafter{\@supervisorSec}{-}
    {
        \vspace*{1.2cm}
        
        \rmfamily\fontsize{14}{16}\selectfont{Promotor}
        
        \vspace*{0.4cm}
        
        \fontsize{15}{17}{\textbf{\@supervisor}}
    }
    {
        \rmfamily\fontsize{14}{16}\selectfont{Promotor główny:}
        
        \vspace*{0.4cm}
        
        \fontsize{15}{17}{\textbf{\@supervisor}}
        
        \vspace*{1cm}
        
        \rmfamily\fontsize{14}{16}\selectfont{Drugi promotor/promotor pomocniczy:}
        
        \vspace*{0.4cm}
        
        \fontsize{15}{16}{\textbf{\@supervisorSec}}
    }}

\renewcommand{\labelitemi}{--}
\renewcommand{\thefootnote}{\fnsymbol{footnote}}

\fancypagestyle{titlepg}
{
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
    \fancyfoot[C]{\rmfamily\fontsize{14}{16}\selectfont Krak\'{o}w \the\year}
    \fancyfoot[L,R]{}
    \fancyhead{}
}

%------------------------------------------------------------------------------

\def\thesisheaders{
	\fancyfoot[LE,RO]{\small \@shortauthor\quad\textit{\@shorttitlePL}}
%        \def\thesistitles{{\fontsize{20}{22}\textbf{\@titlePL}}}
}


\DeclareOption{en}{
	\def\thesisheaders{
		\fancyfoot[LE,RO]{\small \@shortauthor\quad\textit{\@shorttitleEN}}
	}
%        \def\thesistitles{{\fontsize{20}{22}\textbf{\@titlePL}}\\\vspace*{2mm}
%                          {\fontsize{20}{22}\textbf{\@titleEN}}}
}

\ProcessOptions

\newcommand{\titlepages}{%
	%--------------------------STRONA TYTUŁOWA--------------------------

	\newpage
	\titlepage
    \thispagestyle{titlepg}

	\begin{center}
    {	\singlespacing

		\includegraphics[scale=1.35, trim={7.5cm, 13cm, 7.5cm, 12.5cm}]{agh_pl2w_cmyk}

		\vspace*{1cm}

%        \fontsize{16}{20}{\textbf{\MakeUppercase{Akademia Górniczo-Hutnicza}}}\\
        \fontsize{14}{16}{\textbf{\@facultyPL}}

        \vspace*{0.4cm}

        \fontsize{14}{16}{\textbf{\@department}}

		\vspace*{1.3cm}

        \fontsize{16}{18}{\textbf{Rozprawa \@thesistypePL a}}

		\vspace*{0.8cm}

        \fontsize{18}{20}{\textbf{\@titlePL}}

		\vspace*{0.8cm}

        \fontsize{14}{16}{\textbf{\@titleEN}}

		\vspace*{1cm}
        
        \fontsize{16}{18}{\textbf{\@author}}
        
        \vspace*{1cm}
%        \vfill
        
        \writesupervisors

    }\end{center}
	\noindent

%	\vfill

	

	

	%--------------------------STRESZCZENIE--------------------------

    \clearpage
    \thispagestyle{empty}

%%    \begin{flushright}
%%        Krak\'{o}w, \@date
%%    \end{flushright}
%%    \vspace*{-55pt}
%%
%%    \begin{flushleft}\singlespacing
%%      Akademia G{\'o}rniczo-Hutnicza im. Stanis{\l{}}awa Staszica \\
%%      {\bfseries\@facultyPL}
%%      \vspace*{0.2cm}
%%
%%      Kierunek studiów: \@degreeprogrammePL
%%      \\\vspace*{0.2cm}
%%      Specjalność: \@specialisationPL
%%      \\\vspace*{0.2cm}
%%      \@author \\
%%      \textit{Imiona i nazwisko studenta}
%%      \\\vspace*{0.2cm}
%%      {\bfseries Praca dyplomowa \@thesistypePL a} \\
%%      \@titlePL
%%      \vspace*{-0.3cm}
%%      \begin{center} \textit{(tytuł pracy)}\end{center}
%%      \vspace*{0.2cm}
%%      Opiekun: \@supervisor \\
%%    \end{flushleft}
%%    \vspace*{0.0cm}
%
    \begin{center}
      \indent \textbf{\MakeUppercase{Streszczenie}}
    \end{center}
    \onehalfspacing
    \@summaryPL
%
    %--------------------------SUMMARY--------------------------

    \clearpage
    \thispagestyle{empty}
%%
%%    \begin{flushright}
%%      Krak\'{o}w, {\selectlanguage{english}\@date}
%%    \end{flushright}
%%    \vspace*{-55pt}
%%
%%    \begin{flushleft}\singlespacing
%%      AGH University of Science and Technology \\
%%      {\bfseries\@facultyEN}
%%      \vspace*{0.2cm}
%%
%%      Field of Study: \@degreeprogrammeEN
%%      \\\vspace*{0.2cm}
%%      Profile/speciality: \@specialisationEN
%%      \\\vspace*{0.2cm}
%%      \@author \\
%%      \textit{(First name and family name of the student)}
%%      \\\vspace*{0.2cm}
%%      {\bfseries \emakefirstuc{\@thesistypeEN} Diploma Thesis}\\
%%      \@titleEN
%%      \vspace*{-0.3cm}
%%      \begin{center} \textit{(Thesis title)}\end{center}
%%      \vspace*{0.2cm}
%%      Supervisor: \@supervisor \\
%%    \end{flushleft}
%%    \vspace*{0.0cm}
%%
    \begin{center}
      \textbf{\MakeUppercase{Summary}}
    \end{center}
    \onehalfspacing
    \@summaryEN
%
%
%
%%	%--------------------------PLAN PRACY--------------------------
%%	\clearpage
%%    \thispagestyle{empty}
%%
%%    \singlespacing
%%
%%    \begin{flushright}
%%      Krak\'{o}w, dnia \@date
%%    \end{flushright}
%%
%%    \begin{flushleft}
%%      {\bfseries\MakeUppercase{Akademia G\'{o}rniczo-Hutnicza}}\\
%%      \indent{\bfseries\MakeUppercase{\@facultyPL}}
%%    \end{flushleft}
%%    \begin{center}
%%
%%      \vspace*{6mm}
%%
%%      {\bfseries TEMATYKA PRACY DYPLOMOWEJ} \\
%%      \vspace{5mm}
%%
%%      {\bfseries\@author} \\
%%      {\itshape imi\k{e} i nazwisko studenta}\\
%%      \vspace*{5mm}
%%    \end{center}
%%
%%    \onehalfspacing
%%    \noindent \textbf{Tytuł pracy dyplomowej:} \\ \@titlePL \\
%%
%%    \noindent\begin{tabular}{p{35mm} p{75mm} c}
%%      Promotor pracy:  & \@supervisor & \\
%%      Recenzent pracy: & \@reviewer   & \\
%%                       &              & \\
%%                       &              & \dots\dots\dots\dots\dots \\
%%                       &              & \textit{Podpis dziekana} \\
%%    \end{tabular}
%%
%%    \vspace*{10mm}
%%    \singlespacing
%%    \noindent PLAN PRACY DYPLOMOWEJ:\\
%%    \@thesisplan
%%    \vspace{0.6cm}
%%    Praktyka (dyplomowa): \vspace*{0.1cm}\\ \@apprenticeship \\
%%    \begin{flushright}
%%      \begin{tabular}{l c c}
%%        Krak\'ow, & \dots\dots\dots & \dots\dots\dots\dots\dots\dots \\
%%                  & {\itshape data} & {\itshape podpis dyplomanta} \\
%%                  &                 & \\
%%                  &                 & \dots\dots\dots\dots\dots\dots \\
%%                  &                 & {\itshape podpis promotora} \\
%%      \end{tabular}
%%    \end{flushright}
%%    \vspace{0.6cm}
%%    \centerline{{Termin oddania do dziekanatu:}\hspace{30mm}\dots\dots\dots\dots 20\dots r.}
%
%
	%--------------------------PODZIĘKOWANIA--------------------------

	\clearpage \titlepage

	\vspace*{15cm} \vfill
    \begin{flushright}
	\begin{minipage}[!h]{10cm}
	{\begin{flushright}
    \Large\itshape \@acknowledgements
    \end{flushright}}
	\end{minipage}
    \end{flushright}

	\clearpage

	\setcounter{page}{1}

}


\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
\fancyhf{}
\fancyhead{}
%\fancyhead[L]{\slshape{\small \rightmark}}
\fancyhead[RE,LO]{\slshape{\small \rightmark}}
%\fancyhead[R]{\bfseries \thepage}
\fancyhead[RO,LE]{\bfseries \thepage}

\thesisheaders

\frenchspacing
\sloppy
\flushbottom
\onehalfspacing

%---------------------------------------------------------------------------
% Ustawienia parametrów tytułów rozdziałów, podrozdziałów, itd.
%---------------------------------------------------------------------------

\titleformat{\chapter}[block]
{\bfseries\LARGE}{\filright \LARGE\thechapter. }{0ex}{}
%odstępy: lewy, góra, dół
\titlespacing{\chapter}{0pt}{17mm}{19mm}
\titleformat{\section}[block]
{\bfseries\Large}{\filright \Large\thesection. }{0ex}{}
\titlespacing{\section}{7mm}{8mm plus 0mm minus 1mm}{4mm plus 0mm minus 1mm}
\titleformat{\subsection}[block]
{\bfseries\large}{\filright \large\thesubsection. }{0ex}{}
\titlespacing{\subsection}{7mm}{6mm}{2.5mm}
\titleformat{\subsubsection}[block]
{\bfseries\normalsize}{\filright \normalsize\thesubsubsection. }{0ex}{}
\titlespacing{\subsubsection}{7mm}{3mm}{1.5mm}


%---------------------------------------------------------------------------
% Ustawienia parametrów generowania spisu treści i spisu rysunków
%---------------------------------------------------------------------------

\renewcommand{\cfttoctitlefont}{\bfseries\Large}
\renewcommand{\cftbeforetoctitleskip}{20mm}
\renewcommand{\cftaftertoctitleskip}{19mm}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftchapaftersnum}{.}
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsubsecaftersnum}{.}
\setlength{\cftparskip}{2pt}
\setlength{\cftbeforechapskip}{0mm}
\renewcommand{\cftchappagefont}{\normalsize}


%---------------------------------------------------------------------------
% Ustawienia wyświetlania liczb (zgodne z polskimi zwyczajami typograficznymi)
%---------------------------------------------------------------------------

\sisetup{
	output-decimal-marker = {,},
	%	round-mode=places,
	%	round-precision=4,
	group-separator={~},
}

%---------------------------------------------------------------------------
% Ustawienia wyświetlania URL-i
%---------------------------------------------------------------------------

% Zmiana kroju czcionki URL-i z czcionki o stałej szerokości na szeryfową z kursywą.
\renewcommand\UrlFont{\rmfamily\itshape}


%---------------------------------------------------------------------------
% Ustawienia podpisów pod ilustracjami
%---------------------------------------------------------------------------

\captionsetup[subfigure]{labelfont=md}
\captionsetup{%
	% Użyj okrągłych nawiasów wokół odwołań do "podilustracji".
	subrefformat=parens,
	% Margines z obu stron podpisu.
	margin=2cm,
	% W przypadku podpisów mieszczących się w jednej linii nie stosuj justowania, tylko wyśrodkuj cały podpis.
	singlelinecheck=on,
}


%---------------------------------------------------------------------------
% Środowisko do tworzenia opisów symboli użytych w równaniu.
%---------------------------------------------------------------------------

\SetLabelAlign{parright}{\parbox[t]{\labelwidth}{\raggedleft#1}}
\setlist[description]{style=multiline, topsep=10pt, align=parright}

% Odstęp po obu stronach półpauzy.
\newlength{\descriptiondashgap}
\setlength{\descriptiondashgap}{0.5em}

% Element na liście symboli matematycznych użytych w równaniu (symbol wyrównany do prawej, oddzielony półpauzą od definicji)
\renewcommand*\descriptionlabel[1]{\hspace \labelsep \normalfont #1 \mdseries\hspace{\descriptiondashgap}--\hspace{\descriptiondashgap}}

% Odległość półpauzy od lewego marginesu.
\newlength{\eqwheremargin}
\setlength{\eqwheremargin}{2cm}

\newenvironment{eqwhere}[1][]
{%
\setlength{\eqwheremargin}{#1}%
\begin{description}[leftmargin=\eqwheremargin, itemsep=0cm, labelsep=0cm]
}
{\end{description}}
%%% Local Variables:
%%% mode: latex
%%% TeX-master: "praca"
%%% End:
