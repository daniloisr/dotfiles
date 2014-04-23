set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"   \ 'file': '\v\.(exe|so|dll)$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }


" Busca fuzzy no arquivo by: kassio borges
noremap <leader>n :exec "CtrlPLine " . bufname('%')<CR>

" ctrlp dont manage directories
" https://github.com/kien/ctrlp.vim
let g:ctrlp_working_path_mode=0
"let g:ctrlp_follow_symlinks=1
