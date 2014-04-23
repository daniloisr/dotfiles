if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'dart-lang/dart-vim-plugin'

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

syntax on

" fix backspace in mac
set backspace=2

" scriptencoding utf8
set encoding=utf8
set fileencoding=utf8
set termencoding=utf8

"set wildmenu wildignorecase
set wildmode=list:longest,full
set wildignore+=*.pyc,*.zip,*.gz,*.bz,*.tar,*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov,*/tmp,*/cache,*/public/system

set incsearch hls ignorecase smartcase
set lazyredraw
set showcmd
set ruler               " show the cursor position all the time
set incsearch           " do incremental searching
set expandtab
set shiftwidth=2
set tabstop=2
set autoindent
set hls

"split position
"set splitbelow
"set splitright

set t_Co=256
colorscheme Tomorrow-Night

" Auto remove white space
autocmd BufWritePre * :%s/\s\+$//e

set statusline=[%n]\ %<%.55f\ %h%w%m%r%y
set statusline+=%{fugitive#statusline()}
set statusline+=%=
set statusline+=[%c,%l/%L\|%P\]
set laststatus=2
