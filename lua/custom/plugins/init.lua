-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
      require('oil').setup {
        default_file_explorer = true,
        columns = { 'icon' },
        keymaps = {
          ['<C-h>'] = false,
          ['<M-h>'] = 'actions.select_split',
        },
        view_options = {
          show_hidden = true,
        },
      }

      -- Keymap
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', {
        desc = 'Open parent directory',
      })

      vim.keymap.set('n', '<space>-', require('oil').toggle_float)
    end,
  },
  {

    'Mofiqul/dracula.nvim',
    priority = 1000,
    config = function() vim.cmd.colorscheme 'dracula' end,
  },
}
