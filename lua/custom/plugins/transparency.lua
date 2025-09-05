-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  require('ibl').setup(),
  -- Apply highlight settings during startup
  vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
      vim.cmd [[
      highlight Normal guibg=none
      highlight NonText guibg=none
      highlight Normal ctermbg=none
      highlight NonText ctermbg=none
      highlight Normal guibg=NONE ctermbg=NONE
      highlight NonText guibg=NONE ctermbg=NONE
      highlight SpecialKey guibg=NONE ctermbg=NONE
      highlight Whitespace guibg=NONE ctermbg=NONE
    ]]
    end,
    desc = 'Apply custom highlight settings on startup',
  }),
}
