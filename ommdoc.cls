\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ommdoc} [2013/05/22 v0.1  Formato de la OMM Yucatan] 

\AtEndOfClass{\RequirePackage{microtype}}

%%%% Opciones sobre el número de columnas 
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\newif\if@tienefondo
\newif\if@fondoclaro
\DeclareOption{sinfondo}{\@tienefondofalse}
\DeclareOption{confondo}{\@tienefondotrue}
\DeclareOption{fondoclaro}{\@fondoclarotrue}
\DeclareOption{fondooscuro}{\@fondoclarofalse}

\newif\if@fancyfonts
\DeclareOption{cmfonts}{\@fancyfontsfalse}
\DeclareOption{fancyfonts}{\@fancyfontstrue}

%% Todas las opciones no definidas se pasarán a la clase memoir
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ExecuteOptions{confondo,fondoclaro,fancyfonts}
\ProcessOptions*

\LoadClass[twocolumn,final,letterpaper,article]{memoir}

%%%%% Define diseño de la página

\pretitle{\vspace{-1.5cm}\begin{flushright}\HUGE\bfseries}
\posttitle{\par \end{flushright} }

\preauthor{\begin{flushright}\large}
\postauthor{\par \end{flushright}}

\predate{\begin{flushright}\large}
\postdate{\par \end{flushright}}



%%%%% Formato estándar de cabeceras de capítulo

\chapterstyle{lyhne}
%\renewcommand*{\chapnumfont}{\normalfont\HUGE}
\setlength{\beforechapskip}{1.5\onelineskip}
\setlength{\afterchapskip}{\onelineskip}
\setlength{\topskip}{0pt}
\setlength{\midchapskip}{0pt}
\renewcommand*{\printchaptername}{}
\renewcommand*{\printchapternonum}{}
\renewcommand*{\printchapternum}{\chapnumfont\thechapter}
\renewcommand*{\chapterheadstart}{\par\hspace{1.5cm}\hrule\vspace{0.2cm}}
\renewcommand*{\afterchapternum}{}
\renewcommand*{\chaptitlefont}{\normalfont\LARGE\sffamily\raggedleft}
\renewcommand*{\printchaptertitle}[1]{\hfill
\chaptitlefont #1}

%%%%% Paquetes estándar y comunes %%%%%

\RequirePackage[utf8x]{inputenc}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage[spanish,es-noquoting]{babel}
\RequirePackage{xcolor}

\RequirePackage{amsthm}
\newtheorem{definicion}{Definición}
\newtheorem{teorema}{Teorema}
\newtheorem*{teo}{Teorema}

\RequirePackage[top=5cm,letterpaper]{geometry}

\RequirePackage{tikz}
\usetikzlibrary{arrows}

%%%%% Comandos para los autores %%%%%

% Define \problema  con un contador automático
\newcounter{probn}
\newcommand{\problema}{\par\stepcounter{probn}\noindent\textbf{Problema
\arabic{probn}. }}


\if@fancyfonts
%%%%% La tipografía por defecto es Charter
	\RequirePackage[garamond]{mathdesign}	
\fi

%%%% Opciones sobre la imagen de fondo y tipo de letra
%\RequirePackage{xkeyval}
%\DeclareOptionX{fondo}[blue]{\def\@fondo{#1}}
%\DeclareOptionX{fuente}[charter]{\def\@fuente{#1}}
%\ExecuteOptionsX{fondo=blue,fuente=charter}
%\ProcessOptionsX*

\RequirePackage{kvoptions}
\DeclareStringOption[blue]{fondo}
\ProcessKeyvalOptions*

\if@tienefondo
  \RequirePackage{bophook}
  \if@fondoclaro
    \AtBeginPage{%
        \begin{tikzpicture}[opacity=0.25]
        \pgfmathsetmacro{\myopacity}{0.25 + 0.75*(\thepage<2)};
        \node[opacity=\myopacity] at (0,0) { \includegraphics[width=\paperwidth]{\ommdoc@fondo} };
        \end{tikzpicture}
        }
  \else
    \AtBeginPage{%
        \begin{tikzpicture}
        \node at (0,0) { \includegraphics[width=\paperwidth]{\ommdoc@fondo} };
        \end{tikzpicture}
        }
\fi

\endinput
