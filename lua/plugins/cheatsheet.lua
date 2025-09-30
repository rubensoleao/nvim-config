-- Custom cheatsheet items organized by category
return {
  "rubensoleao/cheatsheet.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
  },

  config = function()
    require("cheatsheet").setup({

      bundled_cheatsheets = {
        enabled = { "default", "custom"},
      },
      bundled_plugin_cheatsheets = {
        enabled = { "telescope"}, -- load plugin cheatsheets too
      },
      -- your custom entries
      cheatsheet = {
        custom_cheatsheet = custom,
      },

    })
  end,
}
