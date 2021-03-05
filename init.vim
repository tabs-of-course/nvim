call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
"Plug 'mattn/vim-lsp-settings'
"Plug 'tjdevries/nlua.nvim'
"Plug 'tjdevries/lsp_extensions.nvim'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'sonph/onehalf', { 'rtp': 'vim' }

Plug 'tpope/vim-fugitive'
"Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
"Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/NERDTree'

Plug 'norcalli/nvim-colorizer.lua'
Plug 'nanotee/sqls.nvim'
call plug#end()

set exrc
set guicursor=
set relativenumber
"set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set scrolloff=13
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes
"set cmdheight=2
set updatetime=50
set shortmess+=c
set clipboard=unnamed
set mouse=a

colorscheme onehalfdark


highlight Normal guibg=none ctermbg=none

if(has("termguicolors"))
    set termguicolors
endif

lua require'colorizer'.setup()
 
lua require'sqls'.setup{picker = 'fzf',}
let mapleader = ","

inoremap <C-c> <Esc>
nnoremap <C-c> :w<cr>


"Toggle Nerd Tree
nnoremap <leader>a :NERDTreeToggle<cr>

"Cancel search highlighting 
nnoremap <leader><space> :nohlsearch<cr>

"Vertical movement for wrapped lines
nnoremap j gj
nnoremap k gk

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)



