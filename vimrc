set number
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab
set t_Co=256
set autoindent
set wrap
set showmatch
" :make
set makeprg=perl\ -c\ %\ $*
set errorformat+=%m\ at\ %f\ line\ %l\.
set errorformat+=%m\ at\ %f\ line\ %l
set autowrite
" color complex things
let perl_extended_vars=1
let perl_include_pod=1
" quit instead of Ex mode
map Q :q
" toggle comment
command -range=% T :<line1>,<line2>s/^/#/
command -range=% TT :<line1>,<line2>s/^#//
map t :s/^/#/g<CR>
map tt :s/^#//g<CR>
filetype indent on
syntax on
" colorscheme monochrome
" github.com/fxn/vim-monochrome
colorscheme peachpuff
highlight Normal ctermbg=233
highlight LineNr ctermfg=238
