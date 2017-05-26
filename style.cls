%\\\\\\\\\\\Document Properties\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    \documentclass[11pt,a4paper,reqno,titlepage]{report}
    \usepackage[HTML, table]{xcolor}
    \usepackage{colortbl}
    \usepackage[margin=6pc]{geometry}
    \usepackage[utf8]{inputenc}
    \usepackage[T1]{fontenc}
    \usepackage{amsfonts}
    \usepackage{amsmath}
    \usepackage{mathtools}
    \usepackage{amssymb}
    \usepackage{graphicx}
    \usepackage{tabularx}
    \usepackage{float}
    \usepackage{booktabs}
    \usepackage{titlesec,color}
    \usepackage{caption}
    \usepackage{enumitem}
    \usepackage{subcaption}
    \usepackage{pdfpages}
    \usepackage[hyphens]{url}
    \usepackage{array}
    \usepackage{notoccite}
    \usepackage{listings}
    \usepackage{siunitx}
    \usepackage[toc, titletoc]{appendix}
    \usepackage{longtable}
    \usepackage{makecell}
    \usepackage{fancyhdr} %header package
    \usepackage{multirow} %multirow for table
    \usepackage{verbatim}%I just added this to be able to make comments xoxo Steph PS if you want you can also change it to the comment package
    \usepackage[export]{adjustbox}
    \usepackage{acro} %list of abbreviations
    \usepackage{hyperref}
    \setcounter{LTchunksize}{50}% tex runs faster with larger chunks, 20 is default. Smaller chunk = less memory used. Using more memory is not possible since we don't wanna $$pay$$
    \usepackage{cleveref} %reference to multiple figures at the same time: \Cref{fig1,fig2,fig3} depicts Figures 1 to 3.
    \usepackage{glossaries}
    \usepackage{tablefootnote}
    \usepackage{adjustbox}
%   \usepackage{graphicx} %rotate text
    \usepackage{multirow} %multi row table
    \renewcommand{\chapterautorefname}{Chapter}
    \renewcommand{\sectionautorefname}{Section}
    \renewcommand{\subsectionautorefname}{Section}
    \renewcommand{\subsubsectionautorefname}{Section}
    \usepackage{tabulary}
    \usepackage{csquotes} %quote
    
    
    %!Danger! Leave 'arydshln' last! Add extra packages on top ^
    \usepackage{arydshln} %Adding dashlines in arrays \hdashline -- this should be loaded AFTER longtable, array, colortab and colortbl
    
    
%    \usepackage{savetrees} %this package tries to get everything on as little pages as possible
%\\\\\\\\\\\Document Properties\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    %\usepackage[hidelinks, pdftitle={Project Plan Report Group 14}, pdfauthor={Group 14}, pdfsubject={AE3200 Design Synthesis Exercise}]{hyperref}



%\\\\\\\\\\\Setting-up Nomenclature Classes\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    \usepackage{nomencl}
    \makenomenclature
    
    
    
    
\begin{comment}
    \usepackage{etoolbox}
    \renewcommand\nomgroup[1]{%
        \item[\bfseries
            \ifstrequal{#1}{G}{Greek Symbols}{%
            \ifstrequal{#1}{B}{Roman Symbols}{%
            %ADD MORE CLASSES HERE (Order does not matter, LaTeX will sort classes Based on !Class Reference
            %\ifstrequal{#1}{!Class Reference}{!Class Name}{%
            %\ifstrequal{#1}{!Class Reference}{!Class Name}{%
            %\ifstrequal{#1}{!Class Reference}{!Class Name}{%
            \ifstrequal{#1}{A}{Abbreviations}{}}}%
        ]}
\end{comment}






    % This argument will add the units
    \newcommand{\nomunit}[1]{%
    \renewcommand{\nomentryend}{\hspace*{\fill}[#1]}}
    
    %Renames Nomenclature to List of Symbols
    \renewcommand{\nomname}{List of Symbols}
               

%\\\\\\\\\\Table Spacing & Layout Parameters\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    \renewcommand{\arraystretch}{1.2}
    \newcolumntype{C}{>{\centering\arraybackslash}X} %For tabularX
    \newcolumntype{L}{>{\raggedright\arraybackslash}X} %For tabularX
    \newcolumntype{R}{>{\raggedleft\arraybackslash}X} %For tabularX
    \newcolumntype{b}{X} %For tabularX
    \newcolumntype{s}{>{\hsize=.5\hsize}X} %For tabularX
    %the columns listed 
    
    %this section defines a command that lets an entire row be put in a font/bold/anything
    %\newcolumntype{=}{>{\global\let\currentrowstyle\relax}}
    %\newcolumntype{^}{>{\currentrowstyle}}
    %\newcommand{\rowstyle}[1]{\gdef\currentrowstyle{#1}%
    %#1\ignorespaces 
    %%%%%%%%%%%%%%%%%%%%%%%%% Who added this? This FUCKS UP the report.
    

 
    %Changes parameters for \hdashline to make the dashes into dots:
    \setlength\dashlinedash{0.2pt}
    \setlength\dashlinegap{1.5pt}
    \setlength\arrayrulewidth{0.3pt}
    
    
%\\\\\\\\\\\Set Document Layout & Title Margins\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    \titlespacing*{\chapter}{0pt}{-25pt}{10pt}
    \definecolor{gray75}{gray}{0}
    \newcommand{\hsp}{\hspace{3pt}}
    \titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter\hsp\textcolor{gray75}\hsp}{10pt}{\Huge\bfseries}

%\\\\\\\\\\\Rename Bibliography to References\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    \usepackage[
    backend=biber,
    style=numeric,
    citestyle=numeric,
    sorting=none
    ]{biblatex}
    \addbibresource{references.bib} %Bibliography File
    \newcommand{\BibliographyName}{Bibliography} %Name of Biblography
    
%\\\\\\\\\\\Changing Footnote Counts to Arabic\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    \renewcommand{\thefootnote}{\arabic{footnote}}

%\\\\\\\\\\\Putting Chapter Titles, Page Number and Line in Header Section\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    \pagestyle{fancy}
    \fancyhf{}
    \rhead{\thepage} %Puts a page number on the right side of a header
    \lhead{\leftmark} %Puts a chapter number and name on the left side of a header
    \rfoot{}
    
    
    

%\setlist[description]{leftmargin=1cm,labelindent=1cm}
 
    

