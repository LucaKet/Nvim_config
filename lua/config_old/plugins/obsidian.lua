return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    conceallevel = 2,
    ui = {enable = false},
    workspaces = {
      {
        name = "personal",
        path = "~/Desktop/00main/01notes",
      },
    },
  },
}
