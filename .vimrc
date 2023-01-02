:set relativenumber
:set nu
:map ≤ :!(pdflatex main)<CR><CR>
:autocmd InsertEnter * silent !(jsc --in-window ~/Documents/VimTemplate/e.js)
:autocmd InsertLeave * silent !(jsc --in-window ~/Documents/VimTemplate/b.js)
inoremap <C-c> <esc>
" Following commands are for the enter system 
:let counter=[]
:let position=[]
:map « :if(len(counter)>0)<CR>:let a=expand('%:t')<CR>:execute "e ".counter[0]<CR>:call remove(counter,0)<CR>:execute position[0]<CR>:call remove(position,0)<CR>:call search(a)<CR>endif<CR><CR>
:map \ :source ~/Documents/VimTemplate/enter.vim<CR>

"Following command for duplicate tabs
:map æ :let a=line(".")<CR>:tabe %<CR>:execute a<CR>
"The following command is used to remove some existing rubbishes in latex
:map ÷ :execute "!(rm main.aux)"<CR>:execute "!(rm main.toc)"<CR>:execute "!(rm main.bbl)"<CR>
set backspace=indent,eol,start
au BufEnter main.tex,readme.md execute('cd '.expand('%:p:h'))
au BufEnter * silent !(jsc --in-window ~/Documents/VimTemplate/b.js)
au ExitPre * silent !(jsc --in-window ~/Documents/VimTemplate/e.js)
au BufWritePost ~/Documents/Latex/* !(lg2 add %:p)

:map ¡ :e ~/Documents/Latex/README.md <CR>
:map ™ :e ~/Documents/Latex/markdown/Diary.md <CR>
:map £ :e ~/Documents/Latex/markdown/Readme.md <CR>
