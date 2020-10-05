nno ; :
nno : ;

xno ; :
xno : ;

ino jk <C-c>
cno jk <C-c>

nno <BS> <C-^>

nno <Left> gT
nno <Right> gt
nno <Up> :bnext<CR>
nno <Down> :bprev<CR>

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

nno <C-p> :Files<CR>

filetype plugin indent on
syntax enable

set hidden
set autoread
set autowrite
set swb=usetab
set wildmenu
set wildmode=longest:list,full
set number
if !has('nvim')
    set signcolumn=number
endif

set laststatus=2
set ruler
set timeoutlen=100
set softtabstop=4
set shiftwidth=4
set autoindent
set history=300
set incsearch
set backspace=indent,start,eol


set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

set directory=~/.vim/swap

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


call plug#begin('~/.vim/plugged')
Plug 'arzg/vim-corvine'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'sheerun/vim-polyglot'
Plug 'franbach/miramare'
Plug 'morhetz/gruvbox'
Plug 'co1ncidence/mountaineer.vim'
Plug 'keitanakamura/neodark.vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'arcticicestudio/nord-vim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'joshdick/onedark.vim'
Plug 'hzchirs/vim-material'
Plug 'wadackel/vim-dogrun'
Plug 'edersonferreira/dalton-vim'
Plug 'sainnhe/sonokai'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'flrnd/candid.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'aditya-azad/candle-grey'
Plug 'yorickpeterse/vim-paper'
Plug 'arzg/vim-colors-xcode'
Plug 'co1ncidence/monokai-pro.vim'
Plug 'vim-scripts/CycleColor'
Plug 'rakr/vim-two-firewatch'
Plug 'liuchengxu/space-vim-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'rafalbromirski/vim-aurora'
Plug 'habamax/vim-polar'
Plug 'hardcoreplayers/oceanic-material'
Plug 'sainnhe/edge'
Plug 'sainnhe/gruvbox-material'
Plug 'junegunn/seoul256.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'aonemd/kuroi.vim'
Plug 'pgavlin/pulumi.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'atelierbram/Base2Tone-vim'
Plug 'tpope/vim-vividchalk'
Plug 'ajh17/Spacegray.vim'
Plug 'ajgrf/parchment'
Plug 'igungor/schellar'
Plug 'mhartington/oceanic-next'
Plug 'chriskempson/base16-vim'
call plug#end()

let g:fzf_buffers_jump = 1
let g:seoul256_background = 233
let ayucolor = "mirage"
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_material_background = "hard"
let g:gruvbox_material_palette = "material"

set termguicolors
set background=dark
syntax on
colors gruvbox-material
