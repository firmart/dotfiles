#$pdf_update_method = 2;
$pdf_previewer = "evince %O %S";
$pdf_mode = 1;
#$pdflatex = 'pdflatex -file-line-error -shell-escape -interaction=nonstopmode %O %S' ;
$pdflatex = 'pdflatex -file-line-error -shell-escape -interaction=nonstopmode %O %S | grep --color -n -A 3 "^l\..*\|^\.\/.*"' ;

$preview_continuous_mode = 1
