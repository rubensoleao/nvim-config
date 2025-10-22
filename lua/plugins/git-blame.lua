return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({
        current_line_blame = true,  -- enable inline blame
        current_line_blame_opts = {
          delay = 300,              -- ms before showing blame
          virt_text_pos = "right_align", -- 👈 move blame to the far right edge
        },
        current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> • <summary>",
      })
    end,
  }