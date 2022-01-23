call plug#begin('~/.config/nvim/plugged') 
"-----------------------PLUGINS---------------------------------

" Vim navigation through files with a lot of coconut oil
Plug 'nvim-lua/plenary.nvim' " floating windows for nvim
Plug 'ThePrimeagen/harpoon'
Plug 'Asheq/close-buffers.vim'

" start page
Plug 'mhinz/vim-startify'
Plug 'dstein64/vim-startuptime'

" Debuggin
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

" LaTex support 
"Plug 'lervag/vimtex'

" Git inegration
Plug 'tpope/vim-fugitive'
Plug 'stsewd/fzf-checkout.vim'

" Functions tree
Plug 'liuchengxu/vista.vim'

"Super-completado html
Plug 'mattn/emmet-vim'

"Auto reload browser
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

" Tree sitter 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

"Autocompletado
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
Plug 'folke/lsp-colors.nvim'
Plug 'glepnir/lspsaga.nvim'

"Plug 'hrsh7th/nvim-compe'
"Plug 'onsails/lspkind-nvim' 
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

"File search and tree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-tree.lua'

" Fonts and icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" Themes and customization
"Plug 'dracula/vim'
"Plug 'itchyny/lightline.vim'
"Plug 'joshdick/onedark.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'morhetz/gruvbox'
Plug 'elias-gill/newshell.nvim'
Plug 'tomasr/molokai'
Plug 'ray-x/aurora'

" Pareado (){}""'' y ayudas de indentacion
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'yggdroot/indentLine'

" Utilities
Plug 'vimwiki/vimwiki'
Plug 'norcalli/nvim-colorizer.lua'


call plug#end()
"-------------------------------------------------------
