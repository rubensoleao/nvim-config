return {
  {
    "francoiscabrol/ranger.vim",
    dependencies = { "rbgrouleff/bclose.vim" },
    config = function()
      -- optional: don't auto-map default keys
      vim.g.ranger_map_keys = 0
      -- optional: replace :Ex / netrw with ranger
      vim.g.ranger_replace_netrw = 1
      -- your keymap
      vim.keymap.set("n", "<leader>r", ":Ranger<CR>", { silent = true })
    end,
  },
}
