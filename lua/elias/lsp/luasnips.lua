local ls = require("luasnip")
local types = require("luasnip.util.types")
require("luasnip.loaders.from_vscode").lazy_load() -- to load vscode-like snippets from plugins

-- "Esto es para cuando este trabajando con frameworks y quiera mas snippets"
-- require'luasnip'.filetype_extend("ruby", {"rails"}) 

--config
ls.config.set_config {
    history = true, 
    updateevents = "TextChanged", "TextChangedI",
    enable_autosnippets = true,
    ext_opts = {
        [types.choiceNode] = {
            active = {
                virt_text = { { "☞", "Comment" } },
            },
        },
    }
}

--[[ local s = ls.s -- init the snippet s("trigger", {body})
local i = ls.i -- Placeholders i(1, "placeholder")
local t = ls.t -- static text
local f = ls.f -- function f(func, args) ]]
