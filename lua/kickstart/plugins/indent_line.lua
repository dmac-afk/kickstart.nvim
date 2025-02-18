return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},

    highlight = { 'Function', 'Label' },
    whitespace = { highlight = { 'Whitespace', 'NonText' } },
    remove_blankline_trail = true,
  },
}
