return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Telescope find files' },
      { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Telescope live grep' },
      { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Telescope buffers' },
      { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Telescope help tags' },
      { '<leader>fs', '<cmd>Telescope grep_string<cr>', desc = 'Telescope grep string' },
    },
    config = function()
      require('telescope').setup({
        defaults = {
          mappings = {
            i = {
              -- map actions.which_key to <C-h> (default: <C-/>)
              -- actions.which_key shows the mappings for your picker,
              -- e.g. git_{create, delete, ...}_branch for the git_branches picker
              ['<C-h>'] = 'which_key',
              ['<Esc>'] = 'close',
            },
          },
        },
        pickers = {
          buffers = {
            ignore_current_buffer = true,
          },
          find_files = {
            file_ignore_patterns = { 'node_modules', '.git/' },
            hidden = true,
          },
          grep_string = {
            file_ignore_patterns = { 'node_modules', '.git/' },
            additional_args = { '--hidden' },
          },
          live_grep = {
            file_ignore_patterns = { 'node_modules', '.git/' },
            additional_args = { '--hidden' },
          },
        },
      })
    end,
  },
}
