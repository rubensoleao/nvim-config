-- Custom cheatsheet items organized by category

local custom = {
  {
    "Telescope",
    {
      { "<leader>ff", "Find files" },
      { "<leader>fg", "Live grep" },
      { "<leader>fb", "List buffers" },
      { "<leader>fh", "Help tags" },
    },
  },
  {
    "File Explorer", 
    {
      { "<leader>r", "Open Ranger" },
    },
  },
  {
    "LSP",
    {
      { "gd", "Go to definition" },
      { "gr", "Show references" },
    },
  },
  {
    "General",
    {
      { "<F5>", "Run LÖVE game" },
      { "<F8>", "Switch themes" },
    },
  },
}

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

    -- Add keybinding for Super + ? to open cheatsheet
    vim.keymap.set("n", "<D-?>", ":Cheatsheet<CR>", { desc = "Open cheatsheet" })
  end,
}
