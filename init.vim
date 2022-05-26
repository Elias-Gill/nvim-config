"color themes
set termguicolors
autocmd VimEnter cd ~/Documents/

" ----- archivos vimL -----
source ~/AppData/Local/nvim/plugins.vim
source ~/AppData/Local/nvim/config/remaps.vim
source ~/AppData/Local/nvim/config/startify.vim
source ~/AppData/Local/nvim/config/NvimTree.vim
source ~/AppData/Local/nvim/config/neovide.vim
"source ~/.config/nvim/config/ligthline.vim

" Colors
let g:gruvbox_contrast_dark="soft"
let g:newshell_transparency=0
colorscheme newshell

" ----- archivos lua ------
" buitin lsp
lua require('elias/lsp/lspsaga') 
lua require('elias/lsp/lspconfig') 
lua require('elias/lsp/nvim_cmp') 
lua require('elias/lsp/trouble') 
lua require('elias/lsp/lsp_servers') 

" utils
lua require('elias/utils/windline') 
lua require('elias/utils/gitsigns') 
lua require('elias/utils/colorizer') 

" navigation
lua require('elias/navigation/treesitter') 
lua require('elias/navigation/todo') 
lua require('elias/navigation/nvimtree')

" ----------------------------

" Parser para archivos Json desordenados
command JsonParse :%!python3.9 -m json.tool
command Make :make <afile>
" Borrar buffers sin usar
command Bw :wa | Bwipeout hidden

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

"emmet html
let g:user_emmet_mode='i'
autocmd FileType html,css EmmetInstall
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','

"cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

let g:bracey_browser_command="firefox"
let g:indentLine_fileType=['lua', 'javascript', 'python', 'html', 'c', 'vim']
let g:CoolTotalMatches = 1

"python
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

"Pseudo lector de pdf 
autocmd BufReadPre *.pdf set ro nowrap
autocmd BufReadPost *.pdf silent %!pdftotext "%" -nopgbrk -layout -q -eol unix -
autocmd BufWritePost *.pdf silent !rm -rf ~/PDF/%
autocmd BufWritePost *.pdf silent !lp -s -d pdffg "%"
autocmd BufWritePost *.pdf silent !until [ -e ~/PDF/% ]; do sleep 1; done
autocmd BufWritePost *.pdf silent !mv ~/PDF/% %:p:h

"LaTeX support
"let g:Tex_GotoError = 0
"let g:vimtex_complete_bib.match_str_fmt= 1

" ultisnips
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

