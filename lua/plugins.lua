require("lazy").setup({
    -- Import themes from separate file
    require("plugins.themes"),

    -- Import ranger plugin 
    require("plugins.ranger"),

    -- Import telescope plugin
    require("plugins.telescope"),

    -- Import cheatsheet plugin
    require("plugins.cheatsheet"),

    -- Import mason plugin
    require("plugins.mason"),

    -- Import lsp plugin
    require("plugins.lsp"),
    
    -- Import auto-session plugin
    require("plugins.auto-session"),

    -- Lua syntax highlighting
    { "tbastos/vim-lua" },

    -- LÖVE syntax and autocompletion
    { "davisdude/vim-love-docs" },

    -- LSP support
    { "neovim/nvim-lspconfig" }
})
