call plug#begin('~/.config/nvim/plugged') 
"-----------------------PLUGINS---------------------------------
" Navigation with a lot of coconut oil
Plug 'nvim-lua/plenary.nvim' " floating windows for nvim
Plug 'ThePrimeagen/harpoon'
Plug 'Asheq/close-buffers.vim'

" Start page
Plug 'mhinz/vim-startify'
Plug 'dstein64/vim-startuptime'

" Debuggin
Plug 'puremourning/vimspector'

Plug 'szw/vim-maximizer'

" Git inegration
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" Functions tree
Plug 'liuchengxu/vista.vim'

"Super-completado html
Plug 'mattn/emmet-vim'

"Auto reload browser
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

" Tree sitter 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

"Lsp and completations
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

" Lsp and diagnostics
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'folke/trouble.nvim'
Plug 'tami5/lspsaga.nvim'

"Tabline and status bar
Plug 'windwp/windline.nvim'

"File search and tree
Plug 'ibhagwan/fzf-lua'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kevinhwang91/rnvimr'

" Fonts and icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" Themes and customization
Plug 'morhetz/gruvbox'
Plug 'elias-gill/newshell.nvim'
Plug 'ray-x/aurora'

" Pareado (){}""'' y ayudas de indentacion
Plug 'jiangmiao/auto-pairs'
Plug 'b3nj5m1n/kommentary' 
Plug 'yggdroot/indentLine'

" Utilities
Plug 'vimwiki/vimwiki'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'folke/todo-comments.nvim'
Plug 'romainl/vim-cool'

"Unnused 
"Plug 'tpope/vim-surround'
"Plug 'preservim/nerdcommenter'
"Plug 'dracula/vim'
"Plug 'itchyny/lightline.vim'
"Plug 'nvim-lualine/lualine.nvim'
"Plug 'rcarriga/nvim-notify'
"Plug 'lervag/vimtex'
"Plug 'nvim-telescope/telescope.nvim'
call plug#end()
"-------------------------------------------------------

