
"Map jj to escape key because I have a touchbar mac 
inoremap jj <Esc>

"Default mouse to select vs. paste. This is mainly for GCP vms
set mouse=a 

"Line numbering
set number



call plug#begin('~/.vim/plugged')

"Followed this tutorial to create react IDE https://drivy.engineering/setting-up-vim-for-react/
Plug 'jlanzarotta/bufexplorer'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'Yggdroot/indentLine'
Plug 'w0rp/ale'


Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


"favorite color scheme  
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()


"This is for true colors

if (has("termguicolors"))
  set termguicolors
  endif



  set background=dark
  colorscheme palenight


"React IDE setup
let g:user_emmet_settings = {
    \  'javascript.jsx' : {
      \      'extends' : 'jsx',
      \  },
    \}



let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file


autocmd BufWritePost *.js AsyncRun -post=checktime /Users/ryezupancis/Desktop/vim_ide_react/node_modules/.bin/eslint --fix %


set ttyfast
set lazyredraw


set wrap
set linebreak
set nolist  " list disables linebreak
set formatoptions-=t
set autoindent
let NERDTreeShowHidden=1
set expandtab
set shiftwidth=2
set softtabstop=2
filetype plugin indent on



map tt :NERDTreeToggle<CR> "double click t button to toggle NerdTree
map [] :TagbarToggle<CR> "click [] to toggle Tagbar


set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
