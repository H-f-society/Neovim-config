vim.g.mapleader = " "
-- vim.g.maplocalleader = ","

local keymap = vim.keymap

-- keymap.set("n", "<leader>", ":WhichKey '<Space>'<CR>");
-- keymap.set("n", "<localleader>", ":WhichKey ','<CR>");
--
-------- 视觉模式 --------
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-------- 正常模式 --------
-- 窗口
keymap.set("n", "<leader>nn", ":tabedit<Return>")
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新建窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新建窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 全选
keymap.set("n", "<C-a>", "gg<S-v>G")

-------- 插件 --------
-- nvim-tree
keymap.set("n", "<A-e>", ":NvimTreeFindFile<CR>")
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- 切换buffer
keymap.set("n", "<A-k>", ":bnext<CR>")
keymap.set("n", "<A-j>", ":bprevious<CR>")
keymap.set("n", "<A-w>", ":bd<CR>") -- 关掉当前的buffer

-- floaterm
-- 浮动窗口打开终端
keymap.set("n", "<leader>tt", ":FloatermNew<CR>")
keymap.set("n", "<leader>tp", ":FloatermNew! cd %:p:h && clear<CR>")
-- 用浏览器打开html、md文件
keymap.set("n", "<leader>web", ":FloatermNew --autoclose=2 explorer %<CR>")
-- run code
keymap.set("n", "<leader>crun", ":FloatermNew! gcc % -o %< && %< <CR>")
keymap.set("n", "<leader>java", ":FloatermNew! javac -encoding UTF-8 % && java %< && rm -f *.class <CR>")
keymap.set("n", "<leader>jgc", ":FloatermNew! javac -encoding UTF-8 % && java -XX:+PrintGCDetails %< && rm -f *.class <CR>")
keymap.set("n", "<leader>node", ":FloatermNew! node % <CR>")
keymap.set("n", "<leader>ts", ":FloatermNew! ts-node % <CR>")
keymap.set("n", "<leader>lua", ":FloatermNew! lua % <CR>")
keymap.set("n", "<leader>py", ":FloatermNew! python % <CR>")
keymap.set("n", "<leader>shell", ":FloatermNew! sh % <CR>")

-- symboles-outline
keymap.set('n', '<leader>p', ':SymbolsOutline<CR>')

keymap.set('n', '<leader>tran', ':TransparentToggle<CR>')
