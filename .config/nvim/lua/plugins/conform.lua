return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        css = { 'biome' },
        go = { 'gofmt', 'goimports', 'golines' },
        javascript = { 'biome' },
        javascriptreact = { 'biome' },
        json = { 'biome' },
        lua = { 'stylua' },
        python = { 'black' },
        typescript = { 'biome' },
        typescriptreact = { 'biome' },
        yaml = { 'yamlfmt' },
      },
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = 'fallback',
      },
    })
  end,
}
