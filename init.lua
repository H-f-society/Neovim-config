-- 插件管理
require('plugins/packer')

-- 基础配置
require('core/options')
require('core/keymaps')

-- 插件配置
require('plugins/devicon')
require('plugins/theme')
require('plugins/lualine')
require('plugins/nvim-tree')
require('plugins/treesitter')
require('plugins/lsp')
require('plugins/cmp')
require('plugins/autopairs')
require('plugins/gitsigns')
require('plugins/comment')
require('plugins/telescope')
require('plugins/floaterm')
require('plugins/toggleterm')
require('plugins/bufferline')
require('plugins/dashboard')
require('plugins/leap')
require('plugins/transparent')
require('plugins/blankline')
require('plugins/guessIndent')
-- require('plugins/symbols-outline')
require('plugins/colorful-winsep')
require('plugins/colorizer')
-- require('plugins/jdtls')
-- require('plugins/java')
-- require('plugins/dap')
-- require('plugins/vimspector')

-- :Mason 安装语言自动补全
-- PackerInstall PackerSync 安装插件
-- :TSUpdate、TSInstall java 语法高亮
