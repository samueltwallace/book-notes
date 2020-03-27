\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{booknotes}

\LoadClass{report}

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
\rhead{\notesauthor}
\lhead{\booktitle}
\cfoot{\thepage}

\newtheorem{thm}{Theorem}
\newtheorem{lem}{Lemma}
\newtheorem{cor}{Corollary}
\newtheorem{defn}{Definition}
\newtheorem{rmk}{Remark}
\newtheorem{prop}{Proposition}
\newtheorem*{pf}{Proof}
