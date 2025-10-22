local theme = require("theme")

-- Bind F8 to switch themes
vim.keymap.set("n", "<F8>", theme.next_theme, { noremap = true, silent = true })

-- Optional: Add a reset command
vim.api.nvim_create_user_command("ResetTheme", theme.reset_theme, {})


vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = true, desc = "Go to definition" })
vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { desc = "LSP References" })
