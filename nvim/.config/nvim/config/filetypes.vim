" Markdown
au FileType markdown setl tw=130 " automatic linebreak after arround 130 chars in markdown

" Latex
autocmd BufNewFile,BufRead *.tex  set syntax=tex
autocmd BufNewFile,BufRead *.tex  set filetype=tex
