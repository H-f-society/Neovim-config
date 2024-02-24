vim.cmd [[packadd packer.nvim]]

-- 自动安装packer
-- local ensure_packer = function()
--   local fn = vim.fn
--   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--   if fn.empty(fn.glob(install_path)) > 0 then
--     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--     vim.cmd [[packadd packer.nvim]]
--     return true
--   end
--   return false
-- end
--
-- local packer_bootstrap = ensure_packer()

-- 保存文件时自动更新安装软件
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost packer.lua source <afile> | PackerInstall
    augroup end
]])

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'nvim-tree/nvim-web-devicons'
    -- 主题
    use "EdenEast/nightfox.nvim"
    use 'folke/tokyonight.nvim'
    use "olimorris/onedarkpro.nvim"
    use {
        'nvim-lualine/lualine.nvim', -- 状态栏
        -- 状态栏图标
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-tree/nvim-tree.lua', -- 文档树
        -- 文档树图标
        requires = { 'nvim-tree/nvim-web-devicons' },
        tag = 'nightly'
    }
    use 'christoomey/vim-tmux-navigator' -- 使用ctl-hjkl来定位窗口
    use 'nvim-treesitter/nvim-treesitter' -- 语法高亮
    use 'p00f/nvim-ts-rainbow' -- 配合treesitter, 不同的括号颜色不同

    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig'
    }
    -- 自动补全
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'hrsh7th/cmp-buffer' -- 从buffer中智能提示
    use 'onsails/lspkind-nvim' -- 美化自动完成提示信息
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'rafamadriz/friendly-snippets'
    use 'hrsh7th/cmp-path' -- 文件路径
    -- use 'jinzhongjia/LspUI.nvim'

    use "numToStr/Comment.nvim" -- gcc和gc注释
    use "windwp/nvim-autopairs" -- 自动补全括号
    
    -- buffer分割线
    use {
        'akinsho/bufferline.nvim', 
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
    use "lewis6991/gitsigns.nvim" -- 左则git提示

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',  -- 文件检索
        requires = {
            'nvim-lua/plenary.nvim',
            "kyazdani42/nvim-web-devicons"
        }
    }

    use 'voldikss/vim-floaterm' -- 浮动窗口
    use 'akinsho/toggleterm.nvim'

    -- use 'glepnir/dashboard-nvim'
    use 'nvimdev/dashboard-nvim'
    -- use {
    --     -- 'glepnir/dashboard-nvim', -- neovim启动页
    --     'nvimdev/dashboard-nvim',
    --     event = 'VimEnter',
    --     requires = { 'nvim-tree/nvim-web-devicons' }
    -- }

    -- 代码块对齐线 
    use "lukas-reineke/indent-blankline.nvim"
    use 'Darazaki/indent-o-matic'
    use 'nmac427/guess-indent.nvim'
    
    use 'ggandor/leap.nvim'

    -- use 'simrat39/symbols-outline.nvim'

    use 'liuchengxu/vim-which-key'
    use 'mfussenegger/nvim-jdtls' -- java环境
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use 'puremourning/vimspector'

    use 'xiyaowong/nvim-transparent' -- 背景透明

    use 'nvim-zh/colorful-winsep.nvim'
    use 'NvChad/nvim-colorizer.lua'

    use 'yamatsum/nvim-cursorline'
    use 'echasnovski/mini.nvim'
    use 'gen740/SmoothCursor.nvim'  -- 花里胡哨的光标移动
    use "petertriho/nvim-scrollbar" -- 滚动条插件(含异常代码提示)
    use 'gorbit99/codewindow.nvim'    -- 小地图插件

    use {
        'kawre/leetcode.nvim',
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim", -- required by telescope
            "MunifTanjim/nui.nvim",

            -- optional
            "nvim-treesitter/nvim-treesitter",
            "rcarriga/nvim-notify",
            "nvim-tree/nvim-web-devicons"
        }
    }

    -- if packer_bootstrap then
    --     require('packer').sync()
    -- end

end)
