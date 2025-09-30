-- 1) Custom cheatsheet items
local custom = {
  { key = "<leader>ff", desc = "Find files (Telescope)", mode = "n" },
  { key = "<leader>fg", desc = "Live grep (Telescope)",  mode = "n" },
  { key = "<leader>fb", desc = "List buffers (Telescope)", mode = "n" },
  { key = "<leader>fh", desc = "Help tags (Telescope)",  mode = "n" },

  { key = "<leader>r",  desc = "Open Ranger",            mode = "n" },

  -- marks/jumps helpers (adjust if you remapped)
  { key = "ma",         desc = "Set mark a",             mode = "n" },
  { key = "'a",         desc = "Jump to mark a (line)",  mode = "n" },
  { key = "`a",         desc = "Jump to mark a (exact)", mode = "n" },
}

return {
  "sudormrfbin/cheatsheet.nvim",

  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
  },

  config = function()
    require("cheatsheet").setup({

      include_only_installed_plugins = true,

      bundled_cheatsheets = {
        enabled = { "default", "unicode", "nerd-fonts" },
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
