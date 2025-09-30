require("lazy").setup({
    -- Import themes from separate file
    require("plugins.themes"),

    -- Import ranger plugin 
    require("plugins.ranger"),

    -- Lua syntax highlighting
    { "tbastos/vim-lua" },

    -- LÖVE syntax and autocompletion
    { "davisdude/vim-love-docs" },

    -- LSP support
    { "neovim/nvim-lspconfig" }
})
