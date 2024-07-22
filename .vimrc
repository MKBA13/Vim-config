"common
:filetype plugin on
:syntax on
:set number
:set tabstop=4
:set shiftwidth=4
:set noswapfile
:set relativenumber

"other
:set mouse=a
:set clipboard=unnamedplus

"vim-plug
call plug#begin()

Plug 'puremourning/vimspector'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'vim-airline/vim-airline'
Plug 'Badacadabra/vim-archery'
"Plug 'nordtheme/vim'
"Plug 'jamespwilliams/bat.vim'
"Plug 'lyokha/vim-xkbswitch'

call plug#end()

"vimspector
:let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
:let g:vimspector_base_dir='/home/Benjamin/.vim/plugged/vimspector'

"nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
:let NERDTreeShowHidden=1

"neoclidve
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

"themes
colorscheme archery
:let g:colors_name='archery'
"set termguicolors
"colorscheme bat
:set noshowmode
:set showtabline=2
:set laststatus=2

"ru
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
let g:XkbSwitchEnabled = 1
let g:XkbSwitchIMappings = ['ru']
