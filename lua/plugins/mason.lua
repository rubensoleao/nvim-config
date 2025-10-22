-- lua/plugins/mason.lua
return {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local mason_tool_installer = require("mason-tool-installer")
  
      mason.setup({
        ui = {
          border = "rounded",
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
  
      mason_lspconfig.setup({
        ensure_installed = {
          "tsserver",
          "lua_ls",
          "jsonls",
          "html",
          "cssls",
        },
        automatic_installation = true,
      })
  
      mason_tool_installer.setup({
        ensure_installed = {
          -- formatters / linters / extras
          "prettierd",
          "eslint_d",
          "stylua",
        },
        auto_update = false,
        run_on_start = true,
      })
    end,
  }