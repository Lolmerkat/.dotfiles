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


-- Lazy
vim.keymap.set('n', '<leader>L', ':Lazy<CR>',
    { desc = "Open Lazy.nvim", noremap = true, silent = true })

-- Mason
vim.keymap.set('n', '<leader>M', '<cmd>Mason<CR>',
    { desc = "Open Mason", noremap = true, silent = true })

-- Obsidian
vim.keymap.set('n', 'gf', function()
    if (require('obsidian').util.cursor_on_markdown_link()) then
        return "<cmd>ObsidianFollowLink<CR>"
    else
        return "gf"
    end
end, { noremap = false, expr = true })

-- Ccc
vim.keymap.set({'n'}, '<leader>pc', "<cmd>CccPick<CR>",
    { desc = "Open Ccc picker", noremap = true, silent = true })

-- LuaSnip
vim.keymap.set({ "i", "s" }, "<Tab>", function ()
    local ls = require("luasnip")
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    else
        return "<Tab>"
    end
end, { silent = true, expr = true })
