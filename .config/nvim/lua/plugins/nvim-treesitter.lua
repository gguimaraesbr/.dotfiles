return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = {
          'go',
          'javascript',
          'lua',
          'markdown',
          'markdown_inline',
          'php',
          'python',
          'typescript',
          'vimdoc',
          'yaml',
        },
        highlight = { enable = true },
      })
    end,
  },
}
