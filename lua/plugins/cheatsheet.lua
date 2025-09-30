-- Custom cheatsheet items organized by category
local custom = {
  -- === TELESCOPE COMMANDS ===
  { key = "<leader>ff", desc = "Find files (Telescope)", mode = "n" },
  { key = "<leader>fg", desc = "Live grep (Telescope)",  mode = "n" },
  { key = "<leader>fb", desc = "List buffers (Telescope)", mode = "n" },
  { key = "<leader>fh", desc = "Help tags (Telescope)",  mode = "n" },
  
  -- Telescope navigation
  { key = "<C-j>",      desc = "Move selection next (Telescope)", mode = "i" },
  { key = "<C-k>",      desc = "Move selection previous (Telescope)", mode = "i" },

  -- === FILE MANAGEMENT ===
  { key = "<leader>r",  desc = "Open Ranger file manager", mode = "n" },

  -- === THEME MANAGEMENT ===
  { key = "<F8>",       desc = "Switch to next theme", mode = "n" },
  { key = ":ResetTheme", desc = "Reset theme to default", mode = "c" },

  -- === LÖVE GAME DEVELOPMENT ===
  { key = "<F5>",       desc = "Run LÖVE game (Tetris)", mode = "n" },

  -- === GENERAL VIM ESSENTIALS ===
  -- Leader key
  { key = "<leader>",   desc = "Leader key (space)", mode = "n" },
  
  -- Essential navigation
  { key = "gg",         desc = "Go to top of file", mode = "n" },
  { key = "G",          desc = "Go to bottom of file", mode = "n" },
  { key = "0",          desc = "Go to start of line", mode = "n" },
  { key = "$",          desc = "Go to end of line", mode = "n" },
  { key = "w",          desc = "Next word", mode = "n" },
  { key = "b",          desc = "Previous word", mode = "n" },
  
  -- Essential editing
  { key = "dd",         desc = "Delete line", mode = "n" },
  { key = "yy",         desc = "Yank (copy) line", mode = "n" },
  { key = "p",          desc = "Paste after cursor", mode = "n" },
  { key = "P",          desc = "Paste before cursor", mode = "n" },
  { key = "u",          desc = "Undo", mode = "n" },
  { key = "<C-r>",      desc = "Redo", mode = "n" },
  
  -- Visual mode
  { key = "v",          desc = "Enter visual mode", mode = "n" },
  { key = "V",          desc = "Enter visual line mode", mode = "n" },
  { key = "<C-v>",      desc = "Enter visual block mode", mode = "n" },
  
  -- Insert mode
  { key = "i",          desc = "Insert before cursor", mode = "n" },
  { key = "a",          desc = "Insert after cursor", mode = "n" },
  { key = "I",          desc = "Insert at start of line", mode = "n" },
  { key = "A",          desc = "Insert at end of line", mode = "n" },
  { key = "o",          desc = "Insert new line below", mode = "n" },
  { key = "O",          desc = "Insert new line above", mode = "n" },
  
  -- === MARKS AND JUMPS ===
  { key = "ma",         desc = "Set mark 'a'", mode = "n" },
  { key = "'a",         desc = "Jump to mark 'a' (line)", mode = "n" },
  { key = "`a",         desc = "Jump to mark 'a' (exact)", mode = "n" },
  { key = "''",         desc = "Jump to last position", mode = "n" },
  { key = "``",         desc = "Jump to last position (exact)", mode = "n" },
  
  -- === BUFFER MANAGEMENT ===
  { key = ":bn",        desc = "Next buffer", mode = "c" },
  { key = ":bp",        desc = "Previous buffer", mode = "c" },
  { key = ":bd",        desc = "Delete buffer", mode = "c" },
  { key = ":bw",        desc = "Wipe buffer", mode = "c" },
  
  -- === WINDOW MANAGEMENT ===
  { key = "<C-w>h",     desc = "Move to left window", mode = "n" },
  { key = "<C-w>j",     desc = "Move to bottom window", mode = "n" },
  { key = "<C-w>k",     desc = "Move to top window", mode = "n" },
  { key = "<C-w>l",     desc = "Move to right window", mode = "n" },
  { key = "<C-w>v",     desc = "Split window vertically", mode = "n" },
  { key = "<C-w>s",     desc = "Split window horizontally", mode = "n" },
  { key = "<C-w>q",     desc = "Close current window", mode = "n" },
  
  -- === SEARCH AND REPLACE ===
  { key = "/",          desc = "Search forward", mode = "n" },
  { key = "?",          desc = "Search backward", mode = "n" },
  { key = "n",          desc = "Next search result", mode = "n" },
  { key = "N",          desc = "Previous search result", mode = "n" },
  { key = "*",          desc = "Search word under cursor forward", mode = "n" },
  { key = "#",          desc = "Search word under cursor backward", mode = "n" },
  { key = ":s/old/new", desc = "Replace first occurrence in line", mode = "c" },
  { key = ":s/old/new/g", desc = "Replace all occurrences in line", mode = "c" },
  { key = ":%s/old/new/g", desc = "Replace all occurrences in file", mode = "c" },
  
  -- === LSP COMMANDS (when LSP is active) ===
  { key = "gd",         desc = "Go to definition", mode = "n" },
  { key = "gr",         desc = "Go to references", mode = "n" },
  { key = "K",          desc = "Show documentation", mode = "n" },
  { key = "<leader>rn", desc = "Rename symbol", mode = "n" },
  { key = "<leader>ca", desc = "Code actions", mode = "n" },
  { key = "<leader>f",  desc = "Format code", mode = "n" },
  
  -- === QUICK COMMANDS ===
  { key = ":w",         desc = "Save file", mode = "c" },
  { key = ":q",         desc = "Quit", mode = "c" },
  { key = ":wq",        desc = "Save and quit", mode = "c" },
  { key = ":q!",        desc = "Quit without saving", mode = "c" },
  { key = ":e",         desc = "Edit file", mode = "c" },
  { key = ":help",      desc = "Open help", mode = "c" },
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
