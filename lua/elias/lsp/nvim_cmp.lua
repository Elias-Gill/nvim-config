local present, cmp = pcall(require, "cmp")
if not present then
	return
end

--local kind_icons = {
	--Text = "",
	--Method = "",
	--Function = "",
	--Constructor = "",
	--Field = "ﰠ",
	--Variable = "",
	--Class = "ﴯ",
	--Interface = "",
	--Module = "",
	--Property = "ﰠ",
	--Unit = "塞",
	--Value = "",
	--Enum = "",
	--Keyword = "",
	--Snippet = "",
	--Color = "",
	--File = "",
	--Reference = "",
	--Folder = "",
	--EnumMember = "",
	--Constant = "",
	--Struct = "פּ",
	--Event = "",
	--Operator = "",
	--TypeParameter = "",
--}

--local function get_kind(kind_item)
	--local prsnt, lspkind = pcall(require, "lspkind")
	--if not prsnt then
		--return kind_icons
	--else
		--return lspkind.presets.default[kind_item]
	--end
--end

vim.opt.completeopt = "menuone,noselect"

cmp.setup({
	snippet = {
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
	},
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
	mapping = {
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	},
	sources = cmp.config.sources({
		-- this also affects the order in the completion menu
		{ name = "ultisnips" },
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "buffer" },
	}),
})
require("cmp_nvim_ultisnips").setup{}
