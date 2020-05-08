autocmd! BufWritePost init.vim source %          " Reload .vimrc on edit
let mapleader = ','

source $HOME/.config/nvim/plugins/coc.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json']

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              Color Scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                            " show line numbers
set ruler                             " always show info along bottom
set scrolloff=5                       " show 5 lines min above the cursor
set numberwidth=4                     " make the number gutter 6 chars wide
set laststatus=2                      " last window always has a statusline
set ignorecase                        " make searches case-insensitive
set smartcase                         " override ignorecase when uppercase
set showmatch                         " show corresponding bracket
set list                              " show tabs, spaces etc.
set listchars=tab:→\ ,eol:¬,trail:⋅   " change default chars for list

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
set tabstop=2                         " set tab spacing to 2 characters
set shiftwidth=2
set autoindent
set smartindent
set softtabstop=2
set expandtab                         " use spaces instead of tabs
set nowrap                            " don't wrap text
set formatoptions-=cro                " no auto comment on next line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              Key Mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              Copy & Paste
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamed
set mouse=a                           " on MacOS press ALT and click
set bs=2                              " backe backspace behave like normal again

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
