require'sniprun'.setup({
    display = {
        "Terminal",
    },
    display_options = {
        terminal_width = 45,       --# change the terminal display option width
        notification_timeout = 20   --# timeout for nvim_notify output
    },
})

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    -- show_current_context_start = true,
}

