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
		update_in_insert = true
    }
)

local present, saga = pcall(require, "lspsaga")
if not present then
    return
end

saga.init_lsp_saga {
    debug = false,
    use_saga_diagnostic_sign = true,
    -- diagnostic sign
    error_sign = "",
    warn_sign = "",
    hint_sign = "",
    infor_sign = "",
    dianostic_header_icon = "   ",
    -- code action title icon
    code_action_icon = " ",
    code_action_prompt = {
        enable = false,
        sign = true,
        sign_priority = 40,
        virtual_text = true
    },
    finder_definition_icon = "  ",
    finder_reference_icon = "  ",
    max_preview_lines = 10,
    finder_action_keys = {
        open = "o",
        vsplit = "s",
        split = "i",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>"
    },
    code_action_keys = {
        quit = "q",
        exec = "<CR>"
    },
    rename_action_keys = {
        quit = "<C-c>",
        exec = "<CR>"
    },
    definition_preview_icon = "  ",
    border_style = "single",
    rename_prompt_prefix = "➤",
}