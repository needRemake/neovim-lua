require('plugins')
require('init-lsp')
require('init-theme')
require('init-tree')
require('init-key')
--  ==================
--  ===== Basic ======
--  ==================
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.timeoutlen = 100
vim.g.encoding = "UTF-8"
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.wo.signcolumn = "yes"
vim.o.wrap = true
vim.wo.wrap = true
vim.cmd("set nofoldenable")
