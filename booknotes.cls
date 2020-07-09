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

\newtheorem{thm}{Theorem}[section]
\newtheorem{lem}{Lemma}[section]
\newtheorem{cor}{Corollary}[section]
\newtheorem{defn}{Definition}[section]
\newtheorem{rmk}{Remark}[section]
\newtheorem{prop}{Proposition}[section]
\newtheorem*{pf}{Proof}

\renewcommand{\maketitle}{%
\newpage
\pagestyle{empty}
\hspace{0pt}
\vfill
\begin{center}
\Large
Notes from \textit{\@booktitle}\\
\bigskip
\bigskip
\normalsize
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


\newenvironment{pubdescrip}[1][Publisher's Description]{%
\Large \textbf{#1} \\
\normalsize}{\bigskip \\}

\newenvironment{transcribernote}[1][A Note From the Transcriber]{%
\Large \textbf{#1} \smallskip \\ \normalsize}{\bigskip}
