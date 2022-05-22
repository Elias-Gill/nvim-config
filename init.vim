source ~/.config/nvim/plugins.vim

if exists('g:neovide')
    source ~/.config/nvim/config/neovide.vim
end
" ----- archivos vimL -----
source ~/.config/nvim/config/general_config.vim
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
lua require('elias/utils/various-utils') 

" navigation
lua require('elias/navigation/treesitter') 
lua require('elias/navigation/todo') 
lua require('elias/navigation/fzf') 
lua require('elias/navigation/nvimtree')
" ----------------------------

"emmet html
let g:user_emmet_mode='i'
autocmd FileType html,css,vue EmmetInstall
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','

let g:bracey_browser_command="firefox"

"python
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

" ultisnips
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:vimwiki_list = [{'path': '~/.local/share/vimwiki/'}]
" let g:windowswap_map_keys = 0

let g:indent_blankline_filetype = [ "lua", "vue", "javascript", "python", "html", "c", "vim" ]
let g:indent_blankline_char_list = ['¦']
let g:indent_blankline_context_char = '¦' 
hi IndentBlanklineContextChar guifg=#ffcf3f
