-- Vim general
vim.keymap.set({'i', 'n'}, '<C-S>w', '<cmd>write<CR>'
    ,{ desc = "Write", noremap = true, silent = false })
vim.keymap.set({'i', 'n'}, '<C-S>s',
    function ()
        vim.cmd('write')
        vim.cmd('source %')
    end
    ,{ desc = "Write & Source", noremap = true, silent = false })
vim.keymap.set('n', '<C-h>', '<cmd>set hlsearch!<CR>',
    { desc = "Toggle search highlighting", noremap = true, silent = true })
vim.keymap.set({ 'i', 'v' }, "hj", '<ESC>',
    { desc = 'Escape', noremap = false, silent = true })
vim.keymap.set('n', 'J', function() vim.diagnostic.open_float() end
    ,{ desc = "Dignostic: Open Float", noremap = false, silent = true })

-- Lazy
vim.keymap.set('n', '<leader>L', ':Lazy<CR>',
    { desc = "Open Lazy.nvim", noremap = true, silent = true })

-- Mason
vim.keymap.set('n', '<leader>M', '<cmd>Mason<CR>',
    { desc = "Open Mason", noremap = true, silent = true })

-- Ccc
vim.keymap.set({'n'}, '<leader>pc', "<cmd>CccPick<CR>",
    { desc = "Open Ccc picker", noremap = true, silent = true })
