local opts = {noremap = true ,silent = true}
local keymap = vim.api.nvim_set_keymap
-- leader
keymap("","<SPACE>","<Nop>",opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- special
keymap("n","<LEADER>,","^",opts)
keymap("n","<LEADER>.","$",opts)
-- write quite
keymap("n","<LEADER>w",":w<CR>",opts)
keymap("n","<LEADER>q",":q!<CR>",opts)
-- windows move
keymap("n","<LEADER>h","<C-w>h",opts)
keymap("n","<LEADER>j","<C-w>j",opts)
keymap("n","<LEADER>k","<c-w>k",opts)
keymap("n","<LEADER>l","<c-w>l",opts)
-- tab move
keymap("n","-",":-tabnext<CR>",opts)
keymap("n","=",":+tabnext<CR>",opts)
-- insert move
keymap("i","<C-h>","<Left>",opts)
keymap("i","<C-j>","<Down>",opts)
keymap("i","<C-k>","<Up>",opts)
keymap("i","<C-l>","<Right>",opts)
-- copy
keymap("v","<LEADER>y","\"+y",opts)
-- macro
keymap("v","<LEADER>a",":normal @a<CR>",opts)
-- tree
keymap("n","<LEADER>t",":NvimTreeToggle<CR>",opts)
-- buffer move
keymap("n","<LEADER>-",":bprevious<CR>",opts)
keymap("n","<LEADER>=",":bNext<CR>",opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
-- term
keymap("n","<LEADER>ct",":ToggleTerm<CR>",opts)
keymap("n","<LEADER>co",":TermExec cmd=\" clear && g++ % -std=c++14 -Wall -o %< && time ./%<\"<CR>",opts)
