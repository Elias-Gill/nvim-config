local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local s = ls.s
local i = ls.i
local t = ls.t

ls.snippets = {
    lua = {
        s("req", {t("bien, espero que esto ya funcione")})
    }
}

