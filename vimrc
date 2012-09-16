" Pathogen calls
call pathogen#infect()
call pathogen#helptags()

"set nocompatible      " We're running Vim, not Vi!
"syntax on             " Enable syntax highlighting
"filetype on           " Enable filetype detection
"filetype indent on    " Enable filetype-specific indenting
"filetype plugin on    " Enable filetype-specific plugins

set wildignore=*/tmp,*/cache,*/public/system
set wildmode=longest:full,list:full

" ctrlp dont manage directories
" https://github.com/kien/ctrlp.vim
let g:ctrlp_working_path_mode = 0

" refs:
"  https://github.com/tsaleh/dotfiles/blob/master/vim/vimrc
"  https://github.com/kassio/vim_configs/blob/master/vimrc
set mouse=a

set nobackup              " turnoff backup
set noswapfile
" set backup              " keep a backup file
" set backupdir=~/.vim/backups
set history=100         " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set incsearch           " do incremental searching
set expandtab
set shiftwidth=2
set tabstop=2
set helpheight=1000
set autoindent

set t_Co=256
"colorscheme zenburn

if has("gui_running")
  "colorscheme railscasts
  "colorscheme bespin
  colorscheme jellybeans
  set lines=42
  set columns=120
  "set guifont=Ubuntu\ Mono\ 11
  "set guifont=Monospace\ 9
  set guifont=Monaco\ 9

  " auto open vim in every tab
  " autocmd VimEnter * NERDTree
  " autocmd BufEnter * NERDTreeMirror
endif
