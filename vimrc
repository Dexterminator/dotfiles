call pathogen#infect()
syntax on
filetype plugin indent on
set nu

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set grepprg=grep\ -nH\ $*
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:tex_flavor='latex'
let g:Tex_BibtexFlavor = 'biber'
let g:Tex_MultipleCompileFormats="pdf"
"let g:livepreview_previewer = 'open -a Preview'

set complete+=k

map <Space> <leader>
map ö $
map ; $
map 0 ^
map D <C-D>
map U <C-U>
inoremap kj <Esc>
xnoremap p "_dP
nmap <F12> :LLPStartPreview<cr>
nmap <F13> :NERDTree<cr>
