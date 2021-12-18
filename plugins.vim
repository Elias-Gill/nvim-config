call plug#begin('~/.vim/plugged') 
"-----------------------PLUGINS---------------------------------
" Coconut oil vim navigation through files
Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'

" start page
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-janah'

" Debuggin
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

" LaTex support 
Plug 'lervag/vimtex'

" Git inegration
Plug 'tpope/vim-fugitive'
Plug 'stsewd/fzf-checkout.vim'

" Functions tree
Plug 'liuchengxu/vista.vim'

"Colorizer 
Plug 'lilydjwg/colorizer'

"Super-completado html
Plug 'mattn/emmet-vim'

"Auto reload browser
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

"Autocompletado y lsp
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'folke/trouble.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'onsails/lspkind-nvim'
"Plug 'glepnir/lspsaga.nvim'

Plug 'SirVer/ultisnips'
Plug 'hrsh7th/nvim-compe'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}

"File search and tree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'onsails/lspkind-nvim'

" Themes and customization
    "Plug 'vim-airline/vim-airline'
    "Plug 'dracula/vim'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'

" Pareado (){}""'' y ayudas de indentacion
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'yggdroot/indentLine'

" Utilities
Plug 'vimwiki/vimwiki'


call plug#end()
"-------------------------------------------------------
