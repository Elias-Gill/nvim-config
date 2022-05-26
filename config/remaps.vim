let mapleader = " "

nnoremap ;; A;<esc>
tnoremap <esc> <c-\><c-N>
inoremap <C-\> <C-w>
nnoremap U <C-r> 

" harpoon
nnoremap <silent><leader>' :lua require("harpoon.ui").nav_next()<cr>
nnoremap <silent><leader>; :lua require("harpoon.ui").nav_prev()<cr>
nnoremap <silent><leader>hh :lua require("harpoon.mark").add_file()<cr>
nnoremap <silent><leader>hu :lua require("harpoon.ui").toggle_quick_menu()<cr>

"saving files and exit vim
nnoremap <leader>w :w<CR>
nnoremap <leader>wf :w!<CR>
nnoremap <leader>tt :wqa <cr>
nnoremap <leader>wa :wa<cr>
nnoremap <leader>qa :qa<cr>
nnoremap <leader>qf :q!<CR>

" busqueda de archivos
nnoremap <C-p> :Files<CR>
nnoremap <leader>nt :NvimTreeToggle<CR>
nnoremap <leader>rt :RnvimrToggle<CR>

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

"renombrar buffer usar arg y argdo para refactor completo
nnoremap <leader>lp :%s/
vnoremap <leader>lp :s/

"Live Server 
nnoremap <leader>sb :Bracey<CR>

" Buscar funciones y definiciones 
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
"nnoremap <silent>co <cmd>lua vim.lsp.buf.code_action()<CR>
"nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>

" Trouble and todos comments
nnoremap <silent><leader>to :TroubleToggle<CR>
nnoremap <silent><leader>tg :TodoTrouble<CR>

" diagnostics navigation
nnoremap <silent>[e :Lspsaga diagnostic_jump_prev<cr>
nnoremap <silent>]e :Lspsaga diagnostic_jump_next<cr>
nnoremap <silent>]t :Lspsaga show_line_diagnostics<cr>
nnoremap <silent><leader>rr :Lspsaga rename<CR>
nnoremap <silent>co :Lspsaga code_action<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent><leader>lf :Lspsaga lsp_finder<CR>

"cambiar pestanas
nnoremap <leader>tn :tabnew<cr>
nnoremap <S-tab> gT
nnoremap <TAB> gt

"utilidades
nnoremap n nzzzv
nnoremap N Nzzzv
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" teclas arriba y abajo en insert mode
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

" Moverse entre splits
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
nnoremap <C-l> <c-w>l
nnoremap <C-h> <c-w>h

"Archivos de configuracion
nnoremap <leader>cd :cd %:h <CR>
nnoremap <leader>so :so $MYVIMRC<CR>
nnoremap <leader>SO :tabnew $MYVIMRC<CR>
nnoremap <leader>sm :e ~/AppData/Local/nvim/config/remaps.vim<CR>
nnoremap <leader>sp :e ~/AppData/Local/nvim/plugins.vim<CR>

" function tree
nnoremap <leader>vf :Vista nvim_lsp <CR>
nnoremap <leader>vt :Vista finder nvim_lsp <CR>

" git
nnoremap <leader>gb :Git checkout 
nnoremap <leader>gc :Git commit<CR>
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
nnoremap <silent><F7> :call vimspector#StepInto()<cr>
nnoremap <silent><S-F7> :call vimspector#StepOver()<cr>
nnoremap <silent><leader>db :call vimspector#Continue()<Cr>
nnoremap <silent><leader>dr :call vimspector#Restart()<Cr>
nnoremap <silent><leader>ds :call vimspector#Reset()<Cr>
nnoremap <silent><leader>du :call vimspector#ToggleBreakpoint()<Cr>
nnoremap <silent><leader>df :<Plug>VimspectorToggleConditionalBreakpoint<CR>
nnoremap <silent><leader>dc :call vimspector#RunToCursor()<Cr>

