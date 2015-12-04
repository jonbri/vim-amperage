" amperage.vim - Execute stuff fast
"
" See :help amperage

" don't load twice
if exists("g:loaded_amperage") || &cp || v:version < 700
  finish
endif
let g:loaded_amperage = 1

" execute line with leader @
" integrate with repeat.vim
function! ExecuteLine()
    let line=getline('.')
    execute line
endfunction
nnoremap <silent> <Plug>JonbriAmperage :call ExecuteLine()<cr>
\:call repeat#set("\<Plug>JonbriAmperage")<CR>
nmap <leader>@ <Plug>JonbriAmperage

" repeat last macro in register q
" integrate with repeat.vim
function! ExecuteQMacro()
    normal @q<cr>
endfunction
nnoremap <silent> <Plug>JonbriQMacro :call ExecuteQMacro()<cr>
\:call repeat#set("\<Plug>JonbriQMacro")<CR>
nmap <leader>q <Plug>JonbriQMacro

