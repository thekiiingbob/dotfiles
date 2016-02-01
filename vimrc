set nocompatible | filetype indent plugin on | syn on

" Install plugins using vim-addon-manager, which self-installs if needed
fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif
  call vam#ActivateAddons([], {'auto_install' : 0})
endfun

call SetupVAM()
VAMActivate ack
VAMActivate github:tpope/vim-vinegar
VAMActivate inkpot
VAMActivate github:tpope/vim-vividchalk
VAMActivate github:tpope/vim-cucumber
VAMActivate github:elixir-lang/vim-elixir
VAMActivate github:vim-ruby/vim-ruby
VAMActivate rails
VAMActivate unite
VAMActivate Tagbar
VAMActivate vim-airline
VAMActivate github:jiangmiao/auto-pairs

syntax enable
set background=dark
set t_Co=256
colorscheme vividchalk
set wildmenu
set wildmode=longest,full
set noswapfile
set modelines=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set autoread
"set relativenumber

" changes the leader from '/' to ','
let mapleader = ","


nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" strips fils of whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Ack
nnoremap <leader>a :Ack

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" shows invisible characters
set list
set listchars=tab:▸\ ,eol:¬

" disables arrow keys to stop bad habits
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" disables HELP key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" quicker escape
inoremap hh <ESC>

" opens up  MY .vimrc file in a vertical window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" remap ; to : (less typing)
nnoremap ; :

" should save file when tabbing away from vim
au FocusLost * :wa

"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"highlight Visual term=reverse cterm=reverse guibg=yellow

