" archivos de configuracion vimL
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/configs/remaps.vim
source ~/.config/nvim/configs/startify.vim
source ~/.config/nvim/configs/lightline_and_nerdtree.vim

" archivos de configuracion lua
lua require('elias/nvimtree')
lua require('elias/completation') 
lua require('elias/diagnostics') 
lua require('elias/treesitter') 
"lua require('elias/saga') 

let g:gruvbox_contrast_dark='hard'
colorscheme ghostshell

" Para trabajar con el asqueroso SL pero desde un editor medianamente decente
autocmd BufReadPre *.sl setlocal ts=3 sw=3 syntax=javascript

" lsp
hi Todo guibg=#2BFF75
hi Todo guifg=#232323
hi Pmenu guibg=#333333
hi LspDiagnosticsUnderlineHint guifg=#999999

" general
hi Normal guibg=#232323
hi ColorColumn guibg=#444444
hi MatchParen guibg=grey guifg=white

" utilitis
hi VimWikiLink guifg=#978fff 
hi StartifyHeader guifg=#ffffff 
hi StartifySection guifg=#359dc2 
hi StartifyFile guifg=#FFFFFF 

" native lsp
set completeopt=menuone,noselect

"opciones generales
" folding
set nofoldenable
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

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
set nu rnu
set clipboard=unnamedplus
set cursorline
set shortmess+=c
set ttyfast
set lazyredraw
" wraping
set wm=15
set wrap linebreak
set colorcolumn=120
set tw=120
set splitbelow splitright
set tabstop=4
set softtabstop=4
set expandtab
set sw=4
set scrolloff=3
set laststatus=2
set showmode
set showcmd

" For plug-ins to load correctly.
filetype plugin indent on
set backspace=indent,eol,start
set encoding=utf-8
set viminfo='100,<9999,s100

"" search settings
set matchpairs+=<:>
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase


"color themes
set termguicolors

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

" indent lines
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0
let g:indentLine_fileType = ['html', 'javascript', 'js', 'python']


"lorem
inoremap lorem Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.

"Pseudo lector de pdf a texto
autocmd BufReadPre *.pdf set ro nowrap
autocmd BufReadPost *.pdf silent %!pdftotext "%" -nopgbrk -layout -q -eol unix -
autocmd BufWritePost *.pdf silent !rm -rf ~/PDF/%
autocmd BufWritePost *.pdf silent !lp -s -d pdffg "%"
autocmd BufWritePost *.pdf silent !until [ -e ~/PDF/% ]; do sleep 1; done
autocmd BufWritePost *.pdf silent !mv ~/PDF/% %:p:h
autocmd BufReadPost *.sl set filetype=javascript

"Tabline
let g:airline_powerline_fonts = 1
set guifont=terminess-ttf-nerd-font-mono:h11
hi TabLineFill guibg=#111111


""PARA RESALTAR LAS VARIABLES DEBAJO DEL CURSOR
"setl updatetime=170
"" highlight the Word under cursor (CursorMoved is inperformant)
"highlight WordUnderCursor cterm=underline gui=bold
"autocmd CursorHold * call HighlightCursorWord()
"function! HighlightCursorWord()
"    " if hlsearch is active, don't overwrite it!
"    let search = getreg('/')
"    let cword = expand('<cword>')
"    if match(cword, search) == -1
"        exe printf('match WordUnderCursor /\V\<%s\>/', escape(cword, '/\'))
"    endif
"endfunction

"LaTeX support
let g:Tex_GotoError = 0
"let g:vimtex_complete_bib.match_str_fmt= 1

" NvimTree
let g:nvim_tree_quit_on_open = 1

" Wipe all deleted (unloaded & unlisted) or all unloaded buffers
function s:bdelete() abort
    let l:buffers = filter(getbufinfo(), {_, v -> !v.loaded && v.listed})
    if !empty(l:buffers)
        execute 'bwipeout' join(map(l:buffers, {_, v -> v.bufnr}))
    endif
endfunction
command! -bar Bdelete call s:bdelete()
