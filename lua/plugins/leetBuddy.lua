require('leetbuddy').setup({
    domain = "cn",  -- `cn` for chinese leetcode
    language = "java",
    limit = 30, -- Number of problems displayed in telescope
    keys = {
        select = "<CR>",
        reset = "<C-r>",
        easy = "<C-e>",
        medium = "<C-m>",
        hard = "<C-h>",
        accepted = "<C-a>",
        not_started = "<C-y>",
        tried = "<C-t>",
        page_next = "<C-l>",
        page_prev = "<C-h>",
    }
})

local keymap = vim.keymap

keymap.set("n", "<leader>lq", "<Cmd>LBQuestions<CR>")
keymap.set("n", "<leader>ll", "<Cmd>LBQuestion<CR>")
keymap.set("n", "<leader>lr", "<Cmd>LBReset<CR>")
keymap.set("n", "<leader>lt", "<Cmd>LBTest<CR>")
keymap.set("n", "<leader>ls", "<Cmd>LBSubmit<CR>")



