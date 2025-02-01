-- Function to insert the current date and time at the cursor
local function insert_datetime()
  -- Get the current date and time in the desired format
  local datetime = os.date("%d_%m_%Y-%H_%M_%S")
  -- Insert the datetime at the cursor
  vim.api.nvim_put({ datetime }, 'c', true, true)
end

-- Keymap for <leader>cdt
vim.keymap.set('n', '<leader>cdt', insert_datetime, { noremap = true, silent = true })

