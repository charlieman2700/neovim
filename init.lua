-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '



COLEMAK_MODE = true


require("setup_lazy")
require("plugins")
require("options")

require("autocmd")


-- fire outside config
require('neodev').setup()
require("plugins.lsp")

local colorschemes = {
  Mocha = "catppuccin-mocha",
  RosepineMoon = "rose-pine-moon",
  RosepineMain = "rose-pine-main",
}

local colorscheme = colorschemes.RosepineMoon

vim.cmd('colorscheme ' .. colorscheme)

require("mappings")
if COLEMAK_MODE then
  require("colemak")
end
