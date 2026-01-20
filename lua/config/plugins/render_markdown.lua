return{
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons'},
    opts = {
        render_modes = {'n', 'c', 't'},
        heading = {
          sign = false,
          position = 'inline',
          width = 'block',
          left_margin = 0.5,
          left_pad = 0.2,
          right_pad = 0.2,
        },
        checkbox = { checked = { scope_highlight = '@markup.strikethrough' } },
        pipe_table = { preset = 'round' },
  },

 }
