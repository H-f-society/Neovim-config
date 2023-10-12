local status, actions = pcall(require, "telescope.actions")
if (not status) then
    return
end

--local actions = require('telescope.actions')
-- Global remapping
------------------------------
require("telescope").setup {
    defaults = {
        mappings = {
            n = {
                ["q"] = actions.close,
                ["o"] = actions.file_edit
            }
        },
        file_ignore_patterns = {"./node_modules"}
    },
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case" -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:

local builtin = require('telescope.builtin')

-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了

local keymap = vim.keymap

keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fw', builtin.live_grep, {})  -- 环境里要安装ripgrep
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, {})
