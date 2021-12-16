-- tree sitter configurations (syntax highligth and folding)
require'nvim-treesitter.configs'.setup {
    indent = {
        enable = true,
    },
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = { "javascript" }, -- List of parsers to ignore installing
    highlight = {
        enable = true,              -- false will disable the whole extension
        disable = { "c", "rust" },  -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
    },
}
