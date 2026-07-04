return{
      "nvim-treesitter/nvim-treesitter",
      prefer_git = true,
      lazy = false,
      build = ":TSUpdate",
      opts = {
          ensure_installed = {"c", "lua", "vim", "python", "latex", "markdown", "html"},
          auto_install = true,
          highlight = {enable = true},
          indent = {enable = true},

      }
  }
