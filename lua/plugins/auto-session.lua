return {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
      require("auto-session").setup({
        log_level = "error",
        auto_session_enabled = true,
        auto_session_create_enabled = true,
        auto_restore_enabled = true,
        auto_save_enabled = true,
        auto_session_suppress_dirs = { "~/" },
      })
    end,
  }