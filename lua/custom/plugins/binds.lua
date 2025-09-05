return {
  vim.keymap.set('n', '<leader><Tab>', vim.cmd.NvimTreeToggle, { desc = 'Toggle File Tree' }),

  vim.keymap.set('n', '<C-e>', ':lua vim.diagnostic.goto_next() <CR>'),
  vim.keymap.set('n', '<C-q>', ':lua vim.diagnostic.goto_prev() <CR>'),

  vim.keymap.set('n', '<F5>', ':colorscheme pywal16 <CR>'),

  vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle [U]ndotree' }),
}
