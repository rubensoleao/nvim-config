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

    -- Import Auto complete plugin
    require("plugins.completion"),
    
    -- Import auto-session plugin
    require("plugins.auto-session"),

    -- Import git-blame plugin
    require("plugins.git-blame"),

    -- Lua syntax highlighting
    { "tbastos/vim-lua" },

    -- LÖVE syntax and autocompletion
    { "davisdude/vim-love-docs" },

    -- LSP support
    { "neovim/nvim-lspconfig" }
})
