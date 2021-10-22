This is the vscode setting files for the workspace settings and the recommendation extensions for this workspace.

extensions.json:
includes the recommendation extensions information.
At the moment, the recommendation extensions list is below;
    latex-workshop

settings.json:
includes the workspace settings.
When you write a paper in Japanese with uplatex + dvipdfmx, you need remove a line 13 "-pdf," and make a "latexmkrc" file in your current directory like below example;

    $latex = 'uplatex %O -synctex=1 -interaction=nonstopmode -file-line-error %S';
    $bibtex = 'upbibtex %O %B';
    $biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
    $dvipdf = 'dvipdfmx %O -o %D %S';
    $makeindex = 'upmendex %O -o %D %S';
    $pdf_mode = 3;
    ensure_path('TEXINPUTS', '/root/sty//');
    ensure_path('OSFONTDIR', '/root/fonts//');