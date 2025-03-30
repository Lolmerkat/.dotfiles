local function remove_trailing_whitespace()
    vim.cmd([[%s/\s\+$//e]])
end

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        if vim.bo.filetype ~= 'markdown' then
            remove_trailing_whitespace()
        end
    end
})

