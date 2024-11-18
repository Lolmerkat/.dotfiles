vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local ts_builtin = require('telescope.builtin') 
vim.keymap.set('n', "<leader>ff", ts_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>L', ':Lazy<CR>', { desc = "Open Lazy.nvim", noremap = true, silent = true })
