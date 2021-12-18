-- tree sitter configurations (syntax highligth and folding)
require'nvim-treesitter.configs'.setup {
    indent = {
        enable = true,
    },
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = { "javascript" }, -- List of parsers to ignore installing
    highlight = {
        enable = true,              -- false will disable the whole extension
        disable = { "c", "rust" },  -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
    },
}
require'nvim-treesitter.configs'.setup {
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim 
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ib"] = "@block.inner",
        ["ab"] = "@block.outer",

        -- Or you can define your own textobjects like this
        --["iF"] = {
          --python = "(function_definition) @function",
          --cpp = "(function_definition) @function",
          --c = "(function_definition) @function",
          --java = "(method_declaration) @function",
        --},
      },
    },
  },
}
