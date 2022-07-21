--colorizer
require'colorizer'.setup()
--treesitter
require'nvim-treesitter.configs'.setup {
    -- ts-comment settings
    --[[ context_commentstring = {
        enable = true,
        enable_autocmd = false,
        css = '// %s'
    }, ]]

    indent = {
        enable = true,
    },
    sync_install = false,
    ignore_install = { "javascript" },
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
}
require'nvim-treesitter.configs'.setup {
    textobjects = {
        select = {
            enable = true,

            lookahead = true,

            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ib"] = "@block.inner",
                ["ab"] = "@block.outer",
            },
        },
    },
}
