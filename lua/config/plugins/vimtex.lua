return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      -- 1. OS-Specific Viewer Settings
      if vim.loop.os_uname().sysname == "Darwin" then
        -- macOS / Skim
        vim.g.vimtex_view_method = "skim"
        vim.g.vimtex_view_skim_sync = 1
        vim.g.vimtex_view_skim_activate = 1
        vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
      else
        -- Linux / Zathura
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_view_zathura_check_libsynctex = 1
      end

      -- 2. Your Original Global Settings (Unchanged)
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_imaps_enabled = 0
      vim.g.vimtex_quickfix_open_on_warning = 0
      vim.g.vimtex_quickfix_ignore_filters = {
        "Underfull",
        "Overfull",
        "LaTeX Warning: .\\+ float specifier changed to",
        "Package hyperref Warning: Token not allowed in a PDF string"
      }
    end,
  },
}
