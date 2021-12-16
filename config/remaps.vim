" ocmd BufWinEnter *.* silent loadview"
let mapleader = " ""json files

command JsonParse :%!python -m json.tool " formatear archivos json
nnoremap <leader>ci :call NERDComment('n', 'Append')<cr>

nnoremap ;; A;<esc>

inoremap <a-backspace> <c-w>
tnoremap <esc> <c-\><c-n>

inoremap <C-\> <C-w>
nnoremap U <C-r> 

" harpoon
nnoremap <leader>; :lua require("harpoon.ui").nav_next()<cr>
nnoremap <leader>' :lua require("harpoon.ui").nav_prev()<cr>
nnoremap <leader>hh :lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>hu :lua require("harpoon.ui").toggle_quick_menu()<cr>

"saving files and exit vim
nnoremap <leader>w :w<CR>
nnoremap <leader>wf :w!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>tt :wqa<cr>
nnoremap <leader>wa :wa<cr>
nnoremap <leader>qa :qa<cr>
nnoremap <leader>qf :q!<CR>

" busqueda de archivos
nnoremap <C-p> :Files<CR>
nnoremap <C-s> :Files ~<CR>
nnoremap <leader>nt :NvimTreeOpen<CR>

" cicling buffers
nnoremap <leader>[ :bprevious<CR>
nnoremap <leader>] :bnext<CR>

"teclas de movimiento
nnoremap b w
nnoremap w b
vnoremap b w
vnoremap w b

nnoremap <s-l> 5j
nnoremap <s-h> 5k 
vnoremap <s-l> 5j
vnoremap <s-h> 5k 

"refactorizar buffer usar arg y argdo para refactor completo
nnoremap <leader>lp :%s/
vnoremap <leader>lp :s/

"Live Server 
nnoremap <leader>sb :Bracey<CR>

" Buscar funciones y defin" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent><leader>to :TroubleToggle<CR>


"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

"cambiar pestanas
nnoremap <leader>tn :tabnew<cr>
nnoremap <S-tab> gT
nnoremap <TAB> gt

"MOVERSE ENTRE SPLITS
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

"utilidades
nnoremap n nzzzv
nnoremap N Nzzzv
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" teclas arriba y abajo en insert mode
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

"Archivos de configuracion
nnoremap <leader>cd :cd %:h <CR>
nnoremap <leader>so :so $MYVIMRC<CR>
nnoremap <leader>SO :tabnew $MYVIMRC<CR>
nnoremap <leader>sm :e ~/.config/nvim/configs/remaps.vim<CR>
nnoremap <leader>sp :e ~/.config/nvim/plugins.vim<CR>

" function tree
nnoremap <leader>vf :Vista nvim_lsp <CR>
nnoremap <leader>vt :Vista finder nvim_lsp <CR>

" git
nnoremap <leader>gb :Git checkout 
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gh :diffget //3<CR>
nnoremap <leader>gu :diffget //2<CR>
nnoremap <leader>gs :G<CR>

" block the arrow keys
nnoremap <up> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>
nnoremap <down> <nop>
" resize splits with arrow keys
nnoremap <silent><up> :resize +5<CR>
nnoremap <silent><down> :resize -5<CR>
nnoremap <silent><left> :vertical resize -5<CR>
nnoremap <silent><right> :vertical resize +5<CR>

" maximizer
nnoremap <leader>mt :MaximizerToggle<cr>

" Debug
nnoremap <F7> :call vimspector#StepInto()<Cr>
nnoremap <S-F7> :call vimspector#StepOver()<Cr>
nnoremap <leader>db :call vimspector#Continue()<Cr>
nnoremap <leader>ds :call vimspector#Reset()<Cr>
nnoremap <leader>du :call vimspector#ToggleBreakpoint()<Cr>
nnoremap <leader>dcu :call vimspector#ToggleAdvancedBreakpoint()<Cr>
nnoremap <leader>dp :call vimspector#Pause()<Cr>
nnoremap <leader>df :call vimspector#AddFunctionBreakPoint()<Cr>
nnoremap <leader>dc :call vimspector#RunToCursor()<Cr>
nnoremap <leader>dr :call vimspector#Restart()<Cr>
