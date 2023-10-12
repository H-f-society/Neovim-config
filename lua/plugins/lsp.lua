require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    -- "sumneko_lua",
    "clangd",
    "jdtls", -- java
    "html",
    "cssls", "cssmodules_ls", -- css
    "quick_lint_js", "tsserver", "vtsls", -- js
    "sqlls", -- "sqls",
    "lemminx", -- xml
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- require("lspconfig").sumneko_lua.setup {
--   capabilities = capabilities,
-- }

-- require("LspUI").setup({
--     lightbulb = {
--         enable = false, -- close by default
--         command_enable = false, -- close by default, this switch does not have to be turned on, this command has no effect
--         icon = "💡",
--     },
--     code_action = {
--         enable = true,
--         command_enable = true,
--         icon = "💡",
--         keybind = {
--             exec = "<CR>",
--             prev = "k",
--             next = "j",
--             quit = "q",
--         },
--     },
--     hover = {
--         enable = true,
--         command_enable = true,
--         keybind = {
--             prev = "p",
--             next = "n",
--             quit = "q",
--         },
--     },
--     rename = {
--         enable = true,
--         command_enable = true,
--         auto_select = true, -- whether select all automatically
--         keybind = {
--             change = "<CR>",
--             quit = "<ESC>",
--         },
--     },
--     diagnostic = {
--         enable = true,
--         command_enable = true,
--         icons = {
--             Error = " ",
--             Warn = " ",
--             Info = " ",
--             Hint = " ",
--         },
--     },
--     peek_definition = {
--         enable = false, -- close by default
--         command_enable = true,
--         keybind = {
--             edit = "op",
--             vsplit = "ov",
--             split = "os",
--             quit = "q",
--         },
--     },
-- })
