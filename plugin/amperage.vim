" amperage.vim - execute VimScript line under cursor
" works with repeate.vim
" invoke with <leader>@
"
" don't load twice
if exists("g:loaded_amperage") || &cp || v:version < 700
  finish
endif
let g:loaded_amperage = 1

function! ExecuteLine()
    let line=getline('.')
    execute line
endfunction
nnoremap <leader>@ :call ExecuteLine()<cr>

nnoremap <silent> <Plug>JonbriAmperage :call ExecuteLine()<cr>
\:call repeat#set("\<Plug>JonbriAmperage")<CR>

nmap <leader>@ <Plug>JonbriAmperage
