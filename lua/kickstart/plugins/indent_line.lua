return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = {},

    highlight = { 'Function', 'Label' },
    whitespace = { highlight = { 'Whitespace', 'NonText' } },
    remove_blankline_trail = true,
  },
}
