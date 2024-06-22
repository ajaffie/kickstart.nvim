return {
  'zbirenbaum/copilot.lua',
  event = 'InsertEnter',
  cmd = 'Copilot',
  config = function()
    require('copilot').setup {
      suggestion = {
        keymap = {
          accept = false,
        },
      },
    }
    vim.keymap.set('i', '<Tab>', function()
      local suggestion = require 'copilot.suggestion'
      if suggestion.is_visible() then
        suggestion.accept()
      else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Tab>', true, false, true), 'n', false)
      end
    end, { desc = 'Super Tab' })
  end,
}
