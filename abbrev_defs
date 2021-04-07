;;-*-coding: utf-8;-*-
(define-abbrev-table 'global-abbrev-table
  '(
    ("alpha" "α" nil :count 0)
    ("ar" "→" nil :count 0)
    ("inf" "∞" nil :count 0)
    ("repr" "representation" nil :count 1)
   ))

(define-abbrev-table 'org-mode-abbrev-table
  '(
    ("fig" "#+CAPTION: 
#+LABEL: fig:
#+ATTR_LATEX: :width 7cm
" nil :count 1)
    ("math" "\\[\n\n\\]" nil :count 0)
    ("cjk" "#+LATEX_HEADER: \\AtBeginDocument{\\begin{CJK}{UTF8}{min}}
#+LATEX_HEADER: \\AtEndDocument{\\end{CJK}}
" nil :count 0)
    ("slides" "#+Title: 
#+Subtitle: 
#+OPTIONS: H:2 ^:{} f:t toc:nil
#+LATEX_CLASS: beamer
#+LATEX_CLASS_OPTIONS: [9pt,aspectratio=1610,table]
#+COLUMNS: %45ITEM %10BEAMER_env(Env) %10BEAMER_act(Act) %4BEAMER_col(Col) %8BEAMER_opt(Opt)
#+BEAMER_THEME: CambridgeUS
# Madrid
#+BEAMER_COLOR_THEME: 
#+BEAMER_FONT_THEME:
#+BEAMER_INNER_THEME:
#+BEAMER_OUTER_THEME:
#+BEAMER_HEADER: \\usepackage[backend=bibtex]{biblatex}
#+BEAMER_HEADER: \\usepackage{booktabs}
#+BEAMER_HEADER: \\addbibresource{$HOME/Bibliographies/bibliography}
#+BEAMER_HEADER: \\graphicspath{{$HOME/Pictures/images/}}
#+BEAMER_HEADER: \\usepackage{media9} 
#+BIBLIOGRAPHY: ~/Bibliographies/bibliography
#+BIBLIOGRAPHY_STYLE: plain
#+BEAMER_HEADER: \\AtBeginSection[]{\\begin{frame}<beamer>\\frametitle{Topic}\\tableofcontents[currentsection]\\end{frame}}
" nil :count 0)
   ))
