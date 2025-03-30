-- disable netrw loading
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- require lazy
require("config.lazy")
require("config.lsp.core").setup()
require("config.lsp.lua_ls").setup()

-- utils
require("config.utils.colors")

-- require configurations
require("config.remap")
require("config.set")
require("config.harpoon")
require("config.lualine")
require("config.macro")

-- autocommands
require("config.autocommand.markdown")
require("config.autocommand.batch")
require("config.autocommand.trailing-whitespace")
require("config.autocommand.ccc")

-- highlight groups
require("config.themes.status-column")

-- themes
require("config.themes.tokyonight")
