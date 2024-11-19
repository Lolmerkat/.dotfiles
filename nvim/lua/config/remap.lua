vim.keymap.set("n", "<leader>pv", ':NvimTreeOpen<CR>', { desc = 'Open NvimTree', noremap = true, silent = true})

local ts_builtin = require('telescope.builtin') 
vim.keymap.set('n', "<leader>ff", ts_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>L', ':Lazy<CR>', { desc = "Open Lazy.nvim", noremap = true, silent = true })
