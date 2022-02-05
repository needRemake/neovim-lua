require("toggleterm").setup{
  size = 80,
  open_mapping = [[<c-\>]],
  --on_open = fun(t: Terminal), -- function to run when the terminal opens
  --on_close = fun(t: Terminal), -- function to run when the terminal closes
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  direction = 'float', -- 'vertical' | 'horizontal' | 'window' | 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'curved', --'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
}

local Terminal  = require('toggleterm.terminal').Terminal
local gcc = Terminal:new({ cmd = "g++ %< -std=c++14 -Wall -o %< && time ./%< ", hidden = true })

function MakeFile()
  gcc:toggle()
end
vim.api.nvim_set_keymap("n", "<F5>", "<cmd>lua MakeFile()<CR>", {noremap = true, silent = true})

local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
