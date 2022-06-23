local ls = require("luasnip")
local types = require("luasnip.util.types")

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

local s = ls.s -- init the snippet s("trigger", {body})
local i = ls.i -- Placeholders i(1, "placeholder")
local t = ls.t -- static text
local f = ls.f -- function f(func, args)


ls.add_snippets("javascript", {
	-- trigger is `fn`, second argument to snippet-constructor are the nodes to insert into the buffer on expansion.
	s("fn", {
		t({"function " }), i(1),
		t("("), i(2), t({ ") {", 
            "\t" }), -- cada nuevo "" dentro de la tabla de argumentso de t es un salto de linea
        i(0), t({ "", "}" }),
	}),

	s("log", {
		t({"console.log(", i(1), ";", ""}, "")
    }),

	s("fn", {
		t({"function " }), i(1),
		t("("), i(2), t({ ") {", 
            "\t" }), -- cada nuevo "" dentro de la tabla de argumentso de t es un salto de linea
        i(0), t({ "", "}" }),
	}),
})


ls.add_snippets("python", {
	-- trigger is `fn`, second argument to snippet-constructor are the nodes to insert into the buffer on expansion.
	s("fn", {
		t({"def " }), i(1),
		t("("), i(2), t({ "): ",
            "\t" }), -- cada nuevo "" dentro de la tabla de argumentso de t es un salto de linea
        i(0), t({ ""}),
    }),

    s("for", {
        t({"for " }), i(1), t({ ": ",
            "\t" }), -- cada nuevo "" dentro de la tabla de argumentso de t es un salto de linea
        i(0), t({ ""}),
    }),

    s("while", {
        t({"while " }), i(1), t({ ": ",
            "\t" }), -- cada nuevo "" dentro de la tabla de argumentso de t es un salto de linea
        i(0), t({ ""}),
    }),


    s("if", {
        t({"if " }), i(1), t({ ": ",
            "\t" }), -- cada nuevo "" dentro de la tabla de argumentso de t es un salto de linea
        i(0), t({ ""}),
    }),
})
