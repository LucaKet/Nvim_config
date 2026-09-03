return{
    'MeanderingProgrammer/render-markdown.nvim',
     dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
  heading = {
      -- Customize heading foreground colors or backgrounds
      backgrounds = {
        'RenderMarkdownH1Bb',
        'RenderMarkdownH2Bb',
        'RenderMarkdownH3Bb',
        'RenderMarkdownH4Bb',
        'RenderMarkdownH5Bb',
        'RenderMarkdownH6Bb',
      },
    },
    latex = {
      -- Highlight group used for inline and block LaTeX
      highlight = 'NormalNC',
    },
  },
}
