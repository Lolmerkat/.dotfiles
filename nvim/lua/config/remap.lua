vim.keymap.set("n", "<leader>pv", ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree', noremap = true, silent = true})
vim.keymap.set({ 'i', 'v' }, "hj", '<ESC>', { desc = 'Escape', noremap = false, silent = true })

-- Telescope
local ts_builtin = require('telescope.builtin')
vim.keymap.set('n', "<leader>ff", ts_builtin.find_files,
    { desc = 'Telescope: find files' })
vim.keymap.set('n', '<leader>fg', ts_builtin.git_files,
    { desc = 'Telescope: find git' })
vim.keymap.set('n', '<leader>fb', ts_builtin.buffers,
    { desc = 'Telescope: find open buffers' })

-- Lazy
vim.keymap.set('n', '<leader>L', ':Lazy<CR>',
    { desc = "Open Lazy.nvim", noremap = true, silent = true })

-- Harpoon
local harpoon = require("harpoon")
vim.keymap.set('n', "<C-a>", function() harpoon:list():add() end,
    {desc = "Add to harpoon"})

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Vim general
vim.keymap.set({'i', 'n'}, '<C-S>w',
    function ()
        vim.cmd('write')
    end
    ,{ desc = "Write", noremap = true, silent = false })
vim.keymap.set({'i', 'n'}, '<C-S>s',
    function ()
        vim.cmd('write')
        vim.cmd('source %')
    end
    ,{ desc = "Write & Source", noremap = true, silent = false })

-- Vim tabs
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
