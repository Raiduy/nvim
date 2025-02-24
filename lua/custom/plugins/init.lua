-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- set Neotree as project explorer
-- require('lualine').setup()
vim.keymap.set('n', '<leader>ex', ':Neotree <CR>')

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- move highlighted lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- comment line using Ctrl
vim.keymap.set('i', '<C-_>', '<ESC>gcc<CR><M-A>', { remap = true })
vim.keymap.set('n', '<C-_>', 'gcc', { remap = true })
vim.keymap.set('v', '<C-_>', 'gc', { remap = true })

-- Fugitive shortcut
vim.keymap.set('n', '<leader>g', ':vertical Git<CR>')

return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'hyper', -- theme is doom and hyper default is hyper
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('lualine').setup()
    end,
  },

  'tpope/vim-fugitive',
}
