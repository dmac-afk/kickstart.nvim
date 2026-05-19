local M = {}

function M.setup()
  require('base16-colorscheme').setup {
    -- Background tones
    base00 = '#e3e8e5', -- Default Background
    base01 = '#d8dedb', -- Lighter Background (status bars)
    base02 = '#d3d9d6', -- Selection Background
    base03 = '#569070', -- Comments, Invisibles
    -- Foreground tones
    base04 = '#4e5752', -- Dark Foreground (status bars)
    base05 = '#181b19', -- Default Foreground
    base06 = '#181b19', -- Light Foreground
    base07 = '#181b19', -- Lightest Foreground
    -- Accent colors
    base08 = '#fd4663', -- Variables, XML Tags, Errors
    base09 = '#2d5f86', -- Integers, Constants
    base0A = '#3fa329', -- Classes, Search Background
    base0B = '#22c369', -- Strings, Diff Inserted
    base0C = '#1b537e', -- Regex, Escape Chars
    base0D = '#178246', -- Functions, Methods
    base0E = '#2d7e1b', -- Keywords, Storage
    base0F = '#f7bbc4', -- Deprecated, Embedded Tags
  }
end

-- Register a signal handler for SIGUSR1 (matugen updates)
local signal = vim.uv.new_signal()
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
