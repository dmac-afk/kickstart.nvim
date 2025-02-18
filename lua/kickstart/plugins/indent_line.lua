return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},

    highlight = { 'Function', 'Label' },
    whitespace = { highlight = { 'Whitespace', 'NonText' } },
<<<<<<< HEAD
    remove_blankline_trail = true,
=======
    remove_blankline_trail = false,
>>>>>>> master
  },
}
