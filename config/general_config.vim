" Parser para archivos Json desordenados
command JsonParse :%!python3.9 -m json.tool
" Borrar buffers sin usar
command Bw :wa | Bwipeout hidden
command W :w

"color themes
set termguicolors
let g:newshell_background="None"
colorscheme newshell

"opciones generales
" lsp
set completeopt=menuone,noselect
" folding
set nofoldenable
set foldexpr=nvim_treesitter#foldexpr()
set foldmethod=expr
" indentation
set nolist
set smartindent
set autoindent
" no molestar
set confirm
set hidden
" mouse y numeros
set mouse=a
set numberwidth=4 
set nu
set clipboard=unnamedplus
set cursorline
set shortmess+=c
set lazyredraw
" wraping
set wm=15
set wrap linebreak
set colorcolumn=120
set tw=120
set splitbelow splitright
" Visuales
set scrolloff=3
set laststatus=2
set showmode
set showcmd
" Tabs to spaces
set tabstop=4
set softtabstop=4
set expandtab
set sw=4
" For plug-ins to load correctly.
filetype plugin indent on
set backspace=indent,eol,start
set encoding=utf-8

"" search settings
set matchpairs+=<:>
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

"cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"Pseudo lector de pdf 
autocmd BufReadPre *.pdf set ro nowrap
autocmd BufReadPost *.pdf silent %!pdftotext "%" -nopgbrk -layout -q -eol unix -
autocmd BufWritePost *.pdf silent !rm -rf ~/PDF/%
autocmd BufWritePost *.pdf silent !lp -s -d pdffg "%"
autocmd BufWritePost *.pdf silent !until [ -e ~/PDF/% ]; do sleep 1; done
autocmd BufWritePost *.pdf silent !mv ~/PDF/% %:p:h
