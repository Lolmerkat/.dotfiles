require("config.lazy")
require("config.remap")
require("config.lsp")
require("config.set")
require("config.harpoon")
require("config.lualine")
require("config.macro")

-- autocommands
require("config.autocommand.markdown")
require("config.autocommand.scss")
require("config.autocommand.batch")
require("config.autocommand.trailing-whitespace")

vim.cmd([[colorscheme tokyonight]])
