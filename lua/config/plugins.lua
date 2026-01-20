-- IMPORT DI LAZY --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

------------------------------------------------------------------------- PLUGINS -----------------------------------------------------------

local opts = {}
local plugins = {
  --kanagawa (colorscheme)
  {
    "rebelot/kanagawa.nvim"
  },

  --telescope
  {
      require("config.plugins.telescope")
  },

  --mini lybrary
  { 'nvim-mini/mini.statusline', version = false, opts = {} }, 
  { 'nvim-mini/mini.icons', version = false, opts = {} },
 
--Oil (file manager)
  {
    require("config.plugins.Oil")
  },

  --tree-sitter
  {
    require("config.plugins.treesitter")
  },

    --render markdown
  {
    require("config.plugins.render_markdown")
  },

  {
    require("config.plugins.vimtex")
  },

  {
    require("config.plugins.luasnips")
  },

  {
    require("config.plugins.completion")
  },

  {
    require("config.plugins.alpha")
  },

  {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
  },
}


require("lazy").setup(plugins, opts)
