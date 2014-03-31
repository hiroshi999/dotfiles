" set backup
" no errorbells
" set history=20
" set jignorecase
" set backupdir=/home/ec2-user/tmp/jvim
" set directory=/home/ec2-user/tmp/jvim
set ruler
set shiftwidth=4
" set smartindent
set autoindent
" set cindent
set backspace=2
set whichwrap=24
set showmatch
set splitright
set splitbelow
set tw=0

" neocomplcache
" let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化

" ============================================
"  config
" ============================================
set number
syntax on
highlight Comment ctermfg=DarkRed
set enc=utf-8
" set enc=euc-jp
" set enc=sjis

" ============================================
" search map
" ============================================
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" ============================================
" Tabの設定
" ============================================
" set expandtab
set ts=4 sw=4 sts=0

" ============================================
" 空行を挿入する
" ============================================
" http://vim-users.jp/2009/08/hack57/
nnoremap 0 :<C-u>call append(expand('.'), '')<Cr>j

" ============================================
" html
" ============================================
au BufNewFile,BufRead *.html :set ft=html
au BufNewFile,BufRead *.ctp  :set ft=html

" ============================================
" VimDiff
" ============================================
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7
