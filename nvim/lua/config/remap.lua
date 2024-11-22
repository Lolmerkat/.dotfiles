vim.keymap.set("n", "<leader>pv", ':NvimTreeOpen<CR>', { desc = 'Open NvimTree', noremap = true, silent = true})

local ts_builtin = require('telescope.builtin') 
vim.keymap.set('n', "<leader>ff", ts_builtin.find_files,
    { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>L', ':Lazy<CR>',
    { desc = "Open Lazy.nvim", noremap = true, silent = true })

-- vim general
vim.keymap.set('n', '<leader><leader>', '<CR>',
    { desc = "Enter", noremap = true, silent = true})

--tab keybinds
vim.keymap.set('n', '<leader>Tn', ":tabnew<CR>",
    { desc = "Open new Tab", noremap = true, silent = true})
vim.keymap.set('n', '<leader>Tt', ":tab term<CR>", 
    { desc = "Open new Terminal Tab", noremap = true, silent = true})
vim.keymap.set('n', '<leader>Td', ":tabclose<CR>",
    { desc = "Close active Tab", noremap = true, silent = true})

vim.keymap.set('n', '<leader>T<', ":tabprevious<CR>",
    { desc = "Switch to prev. Tab", noremap = true, silent = true})
vim.keymap.set('n', '<leader>T>', ":tabnext<CR>",
    { desc = "Switch to next Tab", noremap = true, silent = true})
