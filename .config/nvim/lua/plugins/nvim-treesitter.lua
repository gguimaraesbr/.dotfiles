return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = {
          'go',
          'lua',
          'javascript',
          'python',
          'rust',
          'markdown',
          'markdown_inline',
          'vimdoc',
          'yaml',
        },
        highlight = { enable = true },
      })
    end,
  },
}
