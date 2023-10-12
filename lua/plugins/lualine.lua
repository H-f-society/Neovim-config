require('lualine').setup({
    options = {
        icons_enabled = true,
        theme = 'carbonfox',
        -- component_separators = {left = "", right = ""},
        component_separators = {left = "|", right = "|"},
        section_separators = {left = "", right = ""},
        -- component_separators = { left = '', right = '' },
        -- section_separators = { left = '', right = '' },
        disabled_filetypes = {},
        always_divide_middle = true
    },
    sections = {
        lualine_a = {"mode"},
        -- lualine_a = {
        --     {
        --         'fileformat',
        --         symbols = {
        --             unix = '', -- e712
        --             dos = '',  -- e70f
        --             mac = '',  -- e711
        --         }
        --     }
        -- },
        lualine_b = {
            "branch",
            "diff",
            {"diagnostics", sources = {"nvim_lsp"}}
        },
        lualine_c = {"filename"},
        lualine_x = {
            {"diagnostics", sources = {"nvim_lsp"}, symbols = {error = " ", warn = " ", info = " ", hint = " "}},
            "encoding",
            "fileformat",
            "filetype"
        },
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {"location"},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
})
