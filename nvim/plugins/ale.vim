""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              ALE Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ale_linters = { 'javascript': ['eslint'] } " Use only eslint for javascript
let g:ale_fixers = {
      \ 'javascript': ['prettier'],
      \ 'css': ['prettier'],
      \ }
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0

