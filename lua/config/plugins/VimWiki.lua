return {
  'vimwiki/vimwiki',
  init = function()
    vim.g.vimwiki_keymaps = 0
    vim.keymap.set('n', '<leader>ww', '<cmd>VimwikiIndex<cr>')
    --vim.g.vimwiki_global_ext = 0
    --vim.g.vimwiki_autowriteall = 0
    vim.g.vimwiki_table_auto_fmt = 0   
    vim.g.vimwiki_list = {
      {
        path = '~/Desktop/00main/01notes/',
        syntax = 'default',
        ext = '.txt',
        index = '00Index',
      }
    }
  end,
  config = function()
    -- Create an autocommand group for our custom wiki behavior
    local wiki_group = vim.api.nvim_create_augroup("VimwikiCustom", { clear = true })

    -- 1. Reclaim the '-' key for Oil
    vim.api.nvim_create_autocmd("FileType", {
      group = wiki_group,
      pattern = "vimwiki",
      callback = function()
        vim.keymap.set('n', '-', '<CMD>Oil<CR>', { buffer = true, desc = "Open Oil" })
      end,
    })

    -- 2. Strip syntax highlighting but keep wiki functionality
    vim.api.nvim_create_autocmd("BufWinEnter", {
      group = wiki_group,
      pattern = "*/*.txt", -- Targets any .txt file
      callback = function()
        vim.bo.syntax = "text" -- Sets the visual syntax engine to plain text
      end,
    })
  end,
}
