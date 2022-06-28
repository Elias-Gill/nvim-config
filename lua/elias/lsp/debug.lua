require('dap-go').setup()
require('dap-python').setup("/home/elias/.virtualenvs/debugpy/bin/python")
require("dapui").setup({
    mappings = {
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
        toggle = "t",
    },

    layouts = {
        {
            elements = {
                { id = "breakpoints", size = 0.25},
                { id = "scopes", size = 0.30},
                { id = "watches", size = 0.25 },
                { id = "stacks", size = 0.20 },
            },
            size = 40,
            position = "left", -- Can be "left", "right", "top", "bottom"
        },
        -- puedo agregar  mas tablas aca para agregar otros elementos
    },

    expand_lines = false,
    windows = { indent = 3 },
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

dap.defaults.fallback.terminal_win_cmd = '9split new'
--[[ dap.defaults.fallback.force_external_terminal = true
dap.defaults.fallback.external_terminal = {
    command = '/usr/bin/alacritty';
    args = {'-e'};
} ]]
