:set relativenumber
:set nu
:map ≤ :!(pdflatex main)<CR><CR>
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
inoremap <C-c> <esc>
" Following commands are for the enter system 
:let counter=[]
:let position=[]
:map « :if(len(counter)>0)<CR>:let a=expand('%:t')<CR>:execute "e ".counter[0]<CR>:call remove(counter,0)<CR>:execute position[0]<CR>:call remove(position,0)<CR>:call search(a)<CR>:else<CR>:e ini.tex<CR>:endif<CR><CR>
:map \ :source ~/Documents/VimTemplate/enter.vim<CR>

"Following command for duplicate tabs
:map æ :let a=line(".")<CR>:tabe %<CR>:execute a<CR>
"The following command is used to remove some existing rubbishes in latex
:map ÷ :execute "!(rm ~/Dropbox/Latex/main.aux)"<CR>:execute "!(rm ~/Dropbox/Latex/main.toc)"<CR>:execute "!(rm ~/Dropbox/Latex/main.bbl)"<CR>
