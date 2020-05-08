""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              Key Mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ','
nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <Leader>o :<C-u>FZF<CR>
nnoremap ; :
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif
