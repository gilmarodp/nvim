call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'epmatsw/ag.vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'stanangeloff/php.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'preservim/nerdtree'
Plug 'rayburgemeestre/phpfolding.vim'
Plug 'majutsushi/tagbar'
call plug#end()

"ale
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

" ctags
let g:tagbar_ctags_bin = "/usr/bin/ctags"

" phpactor configurations
let g:phpactorPhpBin = "/usr/bin/php7.3"

" ncm2 configurations
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let mapleader="\<space>"
nnoremap <leader>; A; <esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim <cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim <cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-n> :split<cr>
nnoremap <c-f> :Ag<space>
nnoremap <F2> :NERDTree<cr>
nnoremap <c-e> :!node<space>%<cr>
