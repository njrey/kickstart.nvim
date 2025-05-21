-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Tmux nav
  {
    'alexghergh/nvim-tmux-navigation',
    lazy = false,
    config = function()
      require('nvim-tmux-navigation').setup {
        keybindings = {
          left = '<C-h>',
          down = '<C-j>',
          up = '<C-k>',
          right = '<C-l>',
          last_active = '<C-\\>',
          next = '<C-space>',
        },
      }
    end,
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
      local oil = require 'oil'
      oil:setup()
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
  -- overseer
}
