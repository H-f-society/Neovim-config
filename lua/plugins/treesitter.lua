
-- require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.install'.compilers = { "x86_64-w64-mingw32-clang" }

require'nvim-treesitter.configs'.setup {

    -- :checkhealth nvim-treesitter 检查语言支持的安装情况
    -- 添加不同语言
    -- ensure_installed = { "lua", "java", "c", "cpp", "javascript", "html", "css", "vim", "bash", "python", "help", "cmake" },
    -- ensure_installed = { "lua", "java", "yaml", "javascript" },

    sync_install = false,

    auto_install = true,

    ignore_install = { "sql" },

    highlight = {
        enable = true,

        -- disable = { "sql" },
        
        -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
        disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,

        additional_vim_regex_highlighting = false
    },

    indent = { enable = true },

    -- 不同括号颜色区分
    rainbow = {
        -- enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}

