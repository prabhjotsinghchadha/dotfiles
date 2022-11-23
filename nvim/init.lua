require('base')
require('highlights')
require('maps')
require('plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end

vim.o.background = "dark" -- or "light" for light mode
vim.cmd "colorscheme gruvbox"

local is_mac = has "macunix"

if is_mac then
  require('macos')
end

