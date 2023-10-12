local opt = vim.opt

opt.number = true                   -- 显示行号
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4                  -- 自动缩进级别
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.termguicolors = true
opt.cursorline = true               -- 显示当前行
opt.ruler = true                    -- 显示行号和列号
opt.relativenumber = true           -- 显示光标当前行号，其它行显示该行的相对应行号
opt.hlsearch = true                 -- 显示高亮搜索


opt.mouse:append("a")               -- 启用鼠标
opt.clipboard:append("unnamedplus") -- 系统剪切板

