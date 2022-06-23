-- lsp_installer
require("nvim-lsp-installer").setup({
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

-- lspconfig
local lspconfig = require('lspconfig')
lspconfig.sumneko_lua.setup { on_attach = on_attach }
lspconfig.pyright.setup { on_attach = on_attach }
lspconfig.tsserver.setup { on_attach = on_attach }
lspconfig.clangd.setup{on_attach = on_attach}
lspconfig.volar.setup{on_attach = on_attach}
lspconfig.vuels.setup{on_attach = on_attach}
lspconfig.html.setup{on_attach = on_attach}
lspconfig.cssls.setup{on_attach = on_attach}
lspconfig.jsonls.setup{on_attach = on_attach}
lspconfig.bashls.setup{on_attach = on_attach}
lspconfig.gopls.setup{on_attach = on_attach}

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        virtual_text = {
            prefix = "",
            spacing = 1
        },
        signs = true,
        underline = true,
		update_in_insert = true
    }
)
-- lspsaga
local saga = require 'lspsaga'
saga.init_lsp_saga()

