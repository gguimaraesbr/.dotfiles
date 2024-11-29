return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', opts = {} },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'saghen/blink.cmp' },
    },
    config = function(_, opts)
      -- autocompletion
      local lspconfig = require('lspconfig')
      for server, config in pairs(opts.servers or {}) do
        config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end

      -- lsp servers
      require('mason-lspconfig').setup({
        ensure_installed = {
          'biome', --javascript
          'gopls', --go
          'intelephense', --php
          'lua_ls', --lua
          'pyright', --python
        },
      })

      require('lspconfig').biome.setup({})
      require('lspconfig').gopls.setup({})
      require('lspconfig').intelephense.setup({})
      require('lspconfig').lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              disable = { 'lowercase-global', 'undefined-global' },
            },
          },
        },
      })
      require('lspconfig').pyright.setup({})
    end,
  },
}
