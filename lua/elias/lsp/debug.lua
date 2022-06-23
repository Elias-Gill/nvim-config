require('dap-go').setup()
require('dap-python').setup("/home/elias/.virtualenvs/debugpy/bin/python")
require("dapui").setup({
    icons = { expanded = "⇓ ", collapsed = "⇒ " },
    mappings = {
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
        toggle = "t",
    },
    sidebar = {
        elements = {
            { id = "breakpoints", size = 0.25},
            { id = "scopes", size = 0.30},
            { id = "watches", size = 0.25 },
            { id = "stacks", size = 0.20 },
        },
        size = 40,
        position = "left", -- Can be "left", "right", "top", "bottom"
    },
    tray = {
        elements = { },
        size = 0,
        position = "bottom", -- Can be "left", "right", "top", "bottom"
    },
    windows = { indent = 2 },
})


-- listeners para abrir ui automagicamente
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end
dap.defaults.fallback.terminal_win_cmd = '0split new'
