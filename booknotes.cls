\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{booknotes}

\LoadClass{report}
\newcommand*{\booktitle}[1]{\gdef\@booktitle{#1}}
\newcommand*{\bookauthor}[1]{\gdef\@bookauthor{#1}}
\newcommand*{\notesauthor}[1]{\gdef\@notesauthor{#1}}


\RequirePackage{amsthm}
\RequirePackage{fancyhdr}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{mathtools}
\RequirePackage{mathrsfs}
\RequirePackage{chapterbib}
\RequirePackage{hyperref}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\pagestyle{fancy}
\fancyhf{}
\rhead{\@notesauthor}
\lhead{\textit{\@booktitle}}
\cfoot{\thepage}

\newtheorem{thm}{Theorem}
\newtheorem{lem}{Lemma}
\newtheorem{cor}{Corollary}
\newtheorem{defn}{Definition}
\newtheorem{rmk}{Remark}
\newtheorem{prop}{Proposition}
\newtheorem*{pf}{Proof}

\renewcommand{\maketitle}{%
\newpage
\pagestyle{empty}
\hspace{0pt}
\vfill
\begin{center}
\Huge
Notes from \textit{\@booktitle}\\
\bigskip
\bigskip
\Large
by \@bookauthor\\
\medskip
\medskip
\small
taken by \@notesauthor
\end{center}
\vfill \hspace{0pt}
\newpage
\pagestyle{fancy}
}

\let\oldtoc\tableofcontents
\renewcommand{\tableofcontents}{\oldtoc \newpage}









