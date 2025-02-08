vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")
require("config.remap")
require("config.lsp")
require("config.set")
require("config.harpoon")
require("config.lualine")
require("config.macro")

-- autocommands
require("config.autocommand.markdown")
require("config.autocommand.batch")
require("config.autocommand.trailing-whitespace")
require("config.autocommand.ccc")

vim.cmd([[colorscheme tokyonight]])

