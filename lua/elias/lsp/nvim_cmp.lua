local present, cmp = pcall(require, "cmp")
if not present then
	return
end

vim.opt.completeopt = "menuone,noselect"

cmp.setup({
    -- snippets 
	snippet = {
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
	},
    -- lsp symbols and decorators for completation
 	formatting = {
		format = function(entry, vim_item)
			vim_item.kind = string.format("%s", vim_item.kind)
			vim_item.menu = ({
				nvim_lsp = "[LSP]",
				ultisnips = "[Snp]",
				buffer = "[Buf]",
				nvim_lua = "[Lua]",
				path = "[Pth]",
			})[entry.source.name]

			return vim_item
		end,
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
		{ name = "ultisnips" },
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "buffer" },
	}),
})
require("cmp_nvim_ultisnips").setup{}
