" WikiMathToLatex / (convert unicode symbols to LaTeX) {{{
function! WikiMathToLatex()
    silent! %s/\([\u4e00-\u9fff]\) \(.\{-}\) \([\u4e00-\u9fff]\)/\1\2\3/g
    silent! %s/{{math|\(.\{-}\)}}/<math>\1<\/math>/g
    silent! %s/{{fx|\?\(.\{-}\)}}/f(\1)/g
    silent! %s/<sup>\(.\{-}\)<\/sup>/\^{\1}/g
    silent! %s/<sub>\(.\{-}\)<\/sub>/_{\1}/g
    silent! %s/<var>\(.\{-}\)<\/var>/\1/g
    silent! %s/<small>\(.\{-}\)<\/small>/\1/g
    silent! %s/<br>/\r:/g
    silent! %s/'''\([A-Z]\)'''/ \1 /g
    silent! %s/''\([a-zA-Z0-9]\)''/\1/g
    silent! %s/\([a-zA-Z]\)，\([a-zA-Z]\)/\1,\2/g
    silent! %s/≤/\\leq /g
    silent! %s/≥/\\geq /g
    silent! %s/≠/\\neq /g
    silent! %s/⇒/\\implies /g
    silent! %s/→/\\to /g
    silent! %s/↔/\\iff /g
    silent! %s/∀/\\forall /g
    silent! %s/∃/\\exists /g
    silent! %s/∈/\\in /g
    silent! %s/∪/\\cup /g
    silent! %s/\([^\u4e00-\u9fff]\)\(·\|‧\)\([^\u4e00-\u9fff]\)\/\\cdot /g
    silent! %s/∩/\\cap /g
    silent! %s/⊂/\\subset /g
    silent! %s/⊆/\\subseteq /g
    silent! %s/⊇/\\supseteq/g
    silent! %s/∅\|Ø/\\varnothing/g
    silent! %s/△\|Δ/\\triangle /g
    silent! %s/◇/\\diamond /g
    silent! %s/×/\\times /g
    silent! %s/÷/\\div /g
    silent! %s/∞/\\infty /g
    silent! %s/α/\\alpha /g
    silent! %s/σ/\\sigma /g
    silent! %s/π/\\pi /g
    silent! %s/∗/*/g
    silent! %s/²/^2/g
    silent! %s/¬/\\neg /g
    silent! %s/∧/\\land /g
    silent! %s/∨/\\lor /g
    silent! %s/\([^\\]\)ln/\1\\ln/g
    silent! %s/\([^\\]\)sin/\1\\sin/g
    silent! %s/\([^\\]\)cos/\1\\cos/g
    silent! %s/&minus;/-/g
    silent! %s/&nbsp;/ /g
    silent! %s/\\mathbb{\(R\|N\|C\|Z\|Q\|H\)}/\\\1/g
    silent! %s/\([\u4e00-\u9fff]\|、\|，\|。\|；\|：\|:\|\*\|\]\)\(-\|+\)\?\([0-9a-zA-Z]\)\([\u4e00-\u9fff]\|，\|、\|。\|；\|：\|\[\)/\1<math>\2\3<\/math>\4/g
    silent! %s/\([\u4e00-\u9fff]\|，\|、\|。\|；\|：\|:\|\*\|\]\)\(-\|+\)\?\([0-0a-zA-Z]\)\([\u4e00-\u9fff]\|，\|、\|。\|；\|：\|\[\)/\1<math>\2\3<\/math>\4/g
    silent! %s/\([\u4e00-\u9fff]\|，\|、\|。\|；\|：\|:\|\*\|\]\)\([0-9a-zA-Z]\|\\\|(\)\(.\{-}\)\([0-9a-zA-Z]\|}\|)\)\([\u4e00-\u9fff]\|，\|、\|。\|：\|\[\)/\1<math>\2\3\4<\/math>\5/g
    silent! %s/\([\u4e00-\u9fff]\|，\|、\|。\|；\|：\|:\|\*\|\]\)\([0-9a-zA-Z]\|\\\|(\)\(.\{-}\)\([0-9a-zA-Z]\|}\|)\)\([\u4e00-\u9fff]\|，\|、\|。\|：\|\[\)/\1<math>\2\3\4<\/math>\5/g
    silent! %s/\([\u4e00-\u9fff]\|，\|、\|。\|；\|：\|:\|\*\|\]\)\([0-9a-zA-Z]\|{\)\(.*\)\([0-9a-zA-Z]\|}\|)\)\([\u4e00-\u9fff]\|，\|、\|。\|：\|\[\)/\1<math>\2\3\4<\/math>\5/g
    silent! %s/\([\u4e00-\u9fff]\)(\(.\{-}\))\([\u4e00-\u9fff]\)/\1（\2）\3/g
endfunction
" }}}

" LaTeXFormat / (make LaTeX code less buggy) {{{
function! LatexFormat()
    silent! %s/\$\$\(.\{-}\)\$\$/\\[\1\\]/g
    silent! %s/{ \{-}\\itshape\(.\{-}\)}/\\textit{\1}/g
    silent! %s/{ \{-}\\bfseries\(.\{-}\)}/\\textbf{\1}/g
    silent! %s/{ \{-}\\scshape\(.\{-}\)}/\\textsc{\1}/g
endfunction
" }}}

function! Item2DescItem()
    silent ! %s/\\item\[\(\([A-Z]\|[0-9]\|-\|\.\)\{-}\)\]/\\descitem{\1}/g
endfunction
