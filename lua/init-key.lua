-- special
vim.cmd("map <SPACE> <Nop>")
vim.cmd("let mapleader = ' '")
vim.cmd('nnoremap <LEADER>, ^')
vim.cmd('nnoremap <LEADER>. $')
-- write quite
vim.cmd('nnoremap <LEADER>w :w<CR>')
vim.cmd('nnoremap <LEADER>q :q!<CR>')
-- windows move
vim.cmd('nnoremap <LEADER>h <C-w>h')
vim.cmd('nnoremap <LEADER>j <C-w>j')
vim.cmd('nnoremap <LEADER>k <c-w>k')
vim.cmd('nnoremap <LEADER>l <c-w>l')
-- tab move
vim.cmd('nnoremap - :-tabnext<CR>')
vim.cmd('nnoremap = :+tabnext<CR>')
-- insert move
vim.cmd('inoremap <C-h> <Left>')
vim.cmd('inoremap <C-j> <Down>')
vim.cmd('inoremap <C-k> <Up>')
vim.cmd('inoremap <C-l> <Right>')
-- copy
vim.cmd('vnoremap <LEADER>y "+y')
-- macro
vim.cmd('vnoremap <LEADER>a :normal @a<CR>')
-- tree
vim.cmd('nnoremap <LEADER>t :NvimTreeToggle<CR>')
-- Fterm
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<LEADER>ct', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<ESC>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)

