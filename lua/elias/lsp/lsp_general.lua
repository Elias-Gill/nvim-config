-- lsp_installer
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)

lsp_installer.settings({
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
require'lspconfig'.clangd.setup{}

-- lspsaga
vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        virtual_text = {
             --prefix = "",
            prefix = "",
            spacing = 1
        },
        signs = true,
        underline = true,
		update_in_insert = false
    }
)
local saga = require 'lspsaga'
saga.init_lsp_saga()

