-- nvim leetcode.nvim 启动

require("leetcode").setup {
    ---@type string
    arg = "leetcode.nvim",

    ---@type lc.lang
    lang = "java",

    cn = { -- leetcode.cn
        enabled = true, ---@type boolean
        translator = true, ---@type boolean
        translate_problems = true, ---@type boolean
    },

    ---@type lc.storage
    storage = {
        home = vim.fn.stdpath("data") .. "/leetcode",
        cache = vim.fn.stdpath("cache") .. "/leetcode",
    },

    ---@type boolean
    logging = true,

    injector = {
        ["java"] = {
            before = "import java.util.*;",
        },
    }, ---@type table<lc.lang, lc.inject>

    cache = {
        update_interval = 60 * 60 * 24 * 7, ---@type integer 7 days
    },

    console = {
        open_on_runcode = true, ---@type boolean

        dir = "row", ---@type lc.direction

        size = { ---@type lc.size
            width = "90%",
            height = "75%",
        },

        result = {
            size = "60%", ---@type lc.size
        },

        testcase = {
            virt_text = true, ---@type boolean

            size = "40%", ---@type lc.size
        },
    },

    description = {
        position = "left", ---@type lc.position

        width = "40%", ---@type lc.size

        show_stats = true, ---@type boolean
    },

    hooks = {
        ---@type fun()[]
        LeetEnter = {},

        ---@type fun(question: lc.ui.Question)[]
        LeetQuestionNew = {},
    },

    keys = {
        toggle = { "q", "<Esc>" }, ---@type string|string[]
        confirm = { "<CR>" }, ---@type string|string[]

        reset_testcases = "r", ---@type string
        use_testcase = "U", ---@type string
        focus_testcases = "H", ---@type string
        focus_result = "L", ---@type string
    },

    ---@type boolean
    image_support = false,
}

-- `Leet` 打开菜单仪表板
-- - `menu` 与 `Leet` 相同
-- - `console` 打开当前打开问题的控制台弹出窗口
-- - `info` 打开包含当前打开问题信息的弹出窗口
-- - `tabs` 打开所有当前打开问题选项卡的选择器
-- - `yank` 复制当前问题的解决方案
-- - `lang` 打开更改当前问题语言的选择器
-- - `run` 运行当前打开的问题
-- - `test` 与 `Leet run` 相同
-- - `submit` 提交当前打开的问题
-- - `random` 打开一个随机问题
-- - `daily` 打开今天的问题
-- - `list` 打开问题列表选择器
-- - `open` 在默认浏览器中打开当前问题
-- - `reset` 还原到默认的代码模版
-- - `last_submit` 检索上次提交的代码，用于当前问题
-- - `restore` 尝试恢复默认问题布局
-- - `session`
--   - `create` 创建一个新的会话
--   - `change` 更改当前会话
--   - `update` 更新当前会话，以防它失去同步
-- - `desc` 切换问题描述
--   - `toggle` 与 `Leet desc` 相同
--   - `stats` 切换描述统计可见性
-- - `cookie`
--   - `update` 打开提示输入新 cookie
--   - `delete` 注销
-- - `cache`
--   - `update` 更新缓存

