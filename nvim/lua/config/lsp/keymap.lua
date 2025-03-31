local function table_with(table, additions)
    local new_table = {}
    for k, v in pairs(table) do
        new_table[k] = v
    end

    for k, v in pairs(additions) do
        new_table[k] = v
    end

    return new_table
end

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = {buffer = event.buf}

        -- these will be buffer-local keybindings
        -- because they only work if you have an active language server

        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>',
			table_with(opts, { desc = "LSP: Open Popup" }))
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>',
			table_with(opts, { desc = "LSP: Goto Definition" }))
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>',
			table_with(opts, { desc = "LSP: Goto Declaration" }))
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>',
			table_with(opts, { desc = "LSP: Goto Implementation" }))
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>',
			table_with(opts, { desc = "LSP: Goto Type Definition" }))
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>',
			table_with(opts, { desc = "LSP: References" }))
        vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>',
			table_with(opts, { desc = "LSP: Signature Help" }))
        vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>',
			table_with(opts, { desc = "LSP: Rename All Instances" }))
        vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>',
			table_with(opts, { desc = "LSP: Format Buffer" }))
        vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>',
			table_with(opts, { desc = "LSP: Code Action" }))
    end
})
