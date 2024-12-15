return {
  {
    'saghen/blink.cmp',
    lazy = false,
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = 'v0.*',
    opts = {
      keymap = { preset = 'super-tab' },
      highlight = {
        use_nvim_cmp_as_default = true,
      },
      windows = {
        autocomplete = {
          selection = 'manual',
        },
      },
      nerd_font_variant = 'mono',
    },
    opts_extend = { 'sources.completion.enabled_providers' },
  },
}
