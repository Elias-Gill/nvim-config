source ~/.config/nvim/plugins.vim

"color themes
set termguicolors
let g:newshell_background="None"
colorscheme newshell

if exists('g:neovide')
    source ~/.config/nvim/config/neovide.vim
end
" ----- archivos vimL -----
source ~/.config/nvim/config/remaps.vim
source ~/.config/nvim/config/NvimTree.vim
source ~/.config/nvim/config/startify.vim

" ----- archivos lua ------
" buitin lsp
lua require('elias/lsp/nvim_cmp') 
lua require('elias/lsp/trouble') 
lua require('elias/lsp/lsp_general') 

" utils
lua require('elias/utils/windline') 
lua require('elias/utils/gitsigns') 

" navigation
lua require('elias/navigation/treesitter') 
lua require('elias/navigation/todo') 
lua require('elias/navigation/fzf') 
lua require('elias/navigation/nvimtree')
" ----------------------------

" Parser para archivos Json desordenados
command JsonParse :%!python3.9 -m json.tool
" Borrar buffers sin usar
command Bw :wa | Bwipeout hidden
command W :w

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
autocmd FileType html,css,vue EmmetInstall
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','

"cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

let g:bracey_browser_command="firefox"
let g:indentLine_fileType=['lua', 'vue', 'javascript', 'python', 'html', 'c', 'vim']

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

" ultisnips
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:vimwiki_list = [{'path': '~/.local/share/vimwiki/'}]
