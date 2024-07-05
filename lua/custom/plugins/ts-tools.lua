return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    settings = {
      code_lens = 'all',
      jsx_close_tag = {
        enable = true,
      },
    },
  },
}
