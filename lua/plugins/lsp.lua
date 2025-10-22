return {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
  
      require("mason-lspconfig").setup({
        ensure_installed = { "tsserver" },   -- add more servers if you want
        automatic_installation = true,
      })
  
      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        -- optional niceties / root detection
        root_dir = require("lspconfig.util").root_pattern(
          "tsconfig.json", "package.json", "jsconfig.json", ".git"
        ),
        filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
      })
  
      -- Optional: attach LSP keymaps when a client connects
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local buf = args.buf
          local map = function(lhs, rhs, desc)
            vim.keymap.set("n", lhs, rhs, { buffer = buf, desc = desc })
          end
          map("gd", vim.lsp.buf.definition, "Go to definition")
          map("gr", vim.lsp.buf.references, "References")
          map("K",  vim.lsp.buf.hover, "Hover")
        end,
      })
    end,
  }