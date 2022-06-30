local present, cmp = pcall(require, "cmp")
if not present then
	return
end

vim.opt.completeopt = "menuone,noselect"
local lspkind = require('lspkind')

cmp.setup({
    -- snippets 
	snippet = {
        expand = function(args)
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            require('luasnip').lsp_expand(args.body) -- luasnip
        end,
	},
    -- lsp symbols and decorators for completation
 	formatting = {
        matching = {
            disallow_fuzzy_matching = false
        },
        format = lspkind.cmp_format({
            mode = 'symbol_text', -- show only symbol annotations
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

            -- The function below will be called before any actual modifications from lspkind
            -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
            before = function (entry, vim_item)
                vim_item.kind = string.format("%s", vim_item.kind)
                vim_item.menu = ({
                    nvim_lsp = "[LSP]",
                    luasnip = "[Snp]",
                    buffer = "[Buf]",
                    nvim_lua = "[Lua]",
                    path = "[Path]",
                })[entry.source.name]
                return vim_item
            end
        })
    },
    -- mappings 
	mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<UP>"] = cmp.mapping.select_prev_item(),
		["<DOWN>"] = cmp.mapping.select_next_item(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	},
    -- sources
	sources = cmp.config.sources({
		-- this also affects the order in the completion menu
		--{ name = "ultisnips" },
        { name = 'cmp_tabnine' },
		{ name = "luasnip" },
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "buffer" },
	}),
})
-- require("cmp_nvim_ultisnips").setup{}

local tabnine = require('cmp_tabnine.config')
tabnine:setup({
	max_lines = 100;
	max_num_results = 10;
	sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '📠';
	ignored_file_types = { -- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	};
	show_prediction_strength = false;
})
