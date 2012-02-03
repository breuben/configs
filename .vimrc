set nocompatible

syntax on			" Turn on syntax highlighting
set tabstop=4
set shiftwidth=4	" Indent width for autoindent
set smartindent
set ignorecase		" Case insensitve searches
set hlsearch		" Highlight search results
set incsearch		" Incremental search
set smartcase		" Ignore case when all lowercase

" Don't jump over text-wrapped lines
map j gj
map k gk

if has('gui_running')
	colorscheme darkblue
	set lines=999 columns=150

	if has("win32") || has("win64")
		set guifont=Consolas:h10
	else
		set guifont=Monospace\ 9
	endif
endif

" Change location of directory used for Vim swap files
if has("win32") || has("win64")
	set directory=$TMP
end

" Wordwrap
set nowrap
map <F2> :set wrap!<CR>

" Set linenumbering
set number
map <F3> :set number!<CR>
set numberwidth=6	" (default)

" Backspace and cursor keys wrap to previous/nextline
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Control-T opens a new tab
noremap <C-T>	:tabnew<CR>

" Configure tab navigation using ALT-{tabnumber}
map <A-1>  1gt
map <A-2>  2gt
map <A-3>  3gt
map <A-4>  4gt
map <A-5>  5gt
map <A-6>  6gt
map <A-7>  7gt
map <A-8>  8gt
map <A-9>  9gt
map <A-0>  10gt

" Display each tab's number in the title
set guitablabel=(%N%M)\ %f

" CTRL-X+CTRL-C = quit, just like Emacs (heresy!)
noremap <C-X><C-C>	:quit<CR>

" CTRL-X is Cut to system clipboard
vnoremap <C-X>	"+x

" CTRL-C is Copy to system clipboard
vnoremap <C-C>	"+y

" CTRL-V is Paste from system clipboard
map <C-V>		"+gP
cmap <C-V>		<C-R>+

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>	<C-V>

" Use CTRL-S for saving, also in Insert mode
noremap <C-S>	:update<CR>
vnoremap <C-S>	<C-C>:update<CR>
inoremap <C-S>	<C-O>:update<CR>

" CTRL-A is Select All
noremap <C-A>	gggH<C-O>G
inoremap <C-A>	<C-O>gg<C-O>gH<C-O>G
cnoremap <C-A>	<C-C>gggH<C-O>G
onoremap <C-A>	<C-C>gggH<C-O>G
snoremap <C-A>	<C-C>gggH<C-O>G
xnoremap <C-A>	<C-C>ggVG

