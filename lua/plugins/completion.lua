return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 'rafamadriz/friendly-snippets' },

  -- use a release tag to download pre-built binaries
  version = '1.*',
  opts = {
    keymap = { preset = 'default',
        ["<CR>"] = { "accept", "fallback" },   -- accept completion on Enter
        ["<Tab>"] = { "select_next", "fallback" },  -- next completion
        ["<S-Tab>"] = { "select_prev", "fallback" }, -- previous completion
        ["<C-e>"] = { "cancel", "fallback" },  -- cancel completion
    },

    appearance = {
      nerd_font_variant = 'mono'
    },

    completion = { documentation = { auto_show = false } },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
