-- Markdown
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.markdown", "*.md" },
    callback = function ()
        vim.keymap.set(
            { 'n' }, "<leader>mm", function ()
                vim.cmd('Markview splitToggle')
            end, { buffer = true, silent = true }
        )

        vim.keymap.set('n', "<leader>cp", function ()
                local current_file = vim.fn.expand('%')
                local output_file = vim.fn.expand('%:r') .. '.pdf'
                local cmd = string.format('pandoc %s -s -o %s', current_file, output_file)
                vim.fn.system(cmd)
                print('Successfully created ' .. output_file)
            end, { desc = "Pandoc: Create pdf" }
        )

        vim.cmd('Markview splitOpen')
    end
})

vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
    pattern = { "*.markdown", "*.md" },
    callback = function ()
        vim.cmd('Markview splitClose')
    end
})
