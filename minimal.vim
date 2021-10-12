" OPTIONS {{{
set number
set relativenumber
set statusline+=%#warningmsg#
set statusline+=%*
" set colorscheme
set t_Co=256
" make clickable
set mouse=a
" set column limit
set colorcolumn=100
set switchbuf=usetab
set splitright
set splitbelow
" maintain undo history between sessions
set undofile
set undodir=~/.vim_undodir
" }}}
" IMPORTS {{{
" }}}
" FUNCTIONS {{{
" }}}
" AUTOCMDS {{{
augroup filetype_vim
    " add folding to vimscript files
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
augroup vimfold
    " create a vimscript fold
    autocmd!
    autocmd FileType vim :vnoremap <buffer> gc xO" }}}<esc>PO" {{{<esc>hhi
augroup END
" }}}
" LETS {{{
" map leader to semi-colon
let mapleader = ";"
" }}}
" COMMANDS {{{
" pretty print json command
command! PrettyJson %!python -m json.tool
" }}}
" MAPPINGS {{{
" replay macro with Q
nnoremap Q @@
" toggle case of word in edit mode
inoremap <C-u> ~iwwa
" edit /.vimrc
nnoremap <leader>ev :tabe $MYVIMRC<cr>
" source /.vimrc
nnoremap <leader>sv :so $MYVIMRC<cr>
" exit -- INSERT -- mode with jk
inoremap jk <esc>
" toggle syntax highlighting (turn off to speed up)
nnoremap <leader>st :if exists("g:syntax_on") <Bar>
	\ syntax off <Bar>
	\ else <Bar>
	\ syntax enable <Bar>
	\ endif <CR>
" open netrw (file finder)
nnoremap <C-n> :Explore<cr>
" cycle forward through buffers
nnoremap <Tab> :bn<cr>
" cycle backward through buffers
nnoremap <S-Tab> :bp<cr>
" show buffers
nnoremap <C-b> :ls<cr>
" open a new tab
nnoremap T :tabe .<cr>
" save file
nnoremap <leader>w :w!<cr>
" base64 encode/decode
vnoremap <leader>64d c<c-r>=system('base64 --decode', @")<cr><esc>
vnoremap <leader>64e c<c-r>=system('base64 -w 0', @")<cr><esc>
" }}}
" DISABLED DEFAULTS {{{
" unmap arrow keys
nnoremap <Down> <nop>
nnoremap <Up> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
vnoremap <Down> <nop>
vnoremap <Up> <nop>
vnoremap <Left> <nop>
vnoremap <Right> <nop>
inoremap <Down> <nop>
inoremap <Up> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
" unmap esc and ctrl-c
inoremap <c-c> <nop>
vnoremap <esc> <nop>
inoremap <esc> <nop>
" }}}
" COLORSCHEME {{{
colorscheme industry
highlight ColorColumn ctermfg=NONE ctermbg=72
highlight Folded ctermfg=119 ctermbg=22
highlight IncSearch ctermfg=63 ctermbg=77
highlight LineNr ctermfg=110 ctermbg=NONE
highlight FoldColumn ctermfg=153 ctermbg=30
highlight CursorLineNr ctermfg=119 ctermbg=25
highlight Cursor ctermfg=132 ctermbg=55
highlight Search ctermfg=123 ctermbg=29
highlight Visual ctermfg=24 ctermbg=41
highlight Conceal ctermfg=6 ctermbg=NONE
highlight TabLine ctermfg=15 ctermbg=8
highlight TabLineFill ctermfg=16 ctermbg=NONE
highlight TabLineSel ctermfg=14 ctermbg=98
"
" " }}}
" TABS vs SPACES {{{
" convert tabs to 4 spaces
" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" convert tabs to 2 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
" " use tabs
" set tabstop=4 noexpandtab shiftwidth=4 softtabstop=4
" " }}}
