-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
local use = require('packer').use
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
use 'wbthomason/packer.nvim'
  -- theme
use 'NTBBloodbath/doom-one.nvim'
  --lsp
use 'neovim/nvim-lspconfig'
  -- Autocompletion plugin
use 'hrsh7th/nvim-cmp'
  -- LSP source for nvim-cmp
use 'hrsh7th/cmp-nvim-lsp'
  -- Snippets source for nvim-cmp
use 'saadparwaiz1/cmp_luasnip' 
  -- Snippets plugin
use 'L3MON4D3/LuaSnip'
  -- file tree
use 'kyazdani42/nvim-tree.lua'
use 'kyazdani42/nvim-web-devicons'
  -- Comment
use {'numToStr/Comment.nvim',config = function() require('Comment').setup() end}
  -- bufferline
use {'akinsho/bufferline.nvim',config = function() require('bufferline').setup() end}
use 'kyazdani42/nvim-web-devicons'
  -- windline
use {'windwp/windline.nvim',config = function() require('wlsample.airline') end}
  -- which key
use {"folke/which-key.nvim",config = function() require('which-key').setup() end}
  -- highlight
use {'nvim-treesitter/nvim-treesitter',config = function() require('init-treesitter') end}
  -- indent
use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
    require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = false,
    show_current_context_start = false,
    }
    end
}
  -- term 
use {"akinsho/toggleterm.nvim",config = function() require("init-term") end }
  -- rust
use {"simrat39/rust-tools.nvim",config = function() require("rust-tools").setup(){} end}
end)
