return {
  'zbirenbaum/copilot.lua',
  event = 'InsertEnter',
  cmd = 'Copilot',
  opts = {
    suggestion = {
      keymap = {
        accept = '<Tab>',
      },
    },
  },
}
