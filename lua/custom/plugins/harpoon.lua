return {
  { -- Harpoon
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim', 'telescope.nvim' },
    branch = 'harpoon2',

    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()
      vim.keymap.set('n', '<leader>ja', function()
        harpoon:list():add()
      end, { desc = 'Add buffer to quick list' })
      vim.keymap.set('n', '<leader>jl', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'View quick list' })
      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end)
    end,
  },
}
