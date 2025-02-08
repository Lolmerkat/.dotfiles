local attached_lsps = {}

local function refresh_attached_lsps()
  -- Get the current buffer number
  local bufnr = vim.api.nvim_get_current_buf()

  -- Fetch the attached clients for the current buffer
  local clients = vim.lsp.get_active_clients({ bufnr = bufnr })

  -- Extract client names
  attached_lsps[bufnr] = {}
  for _, client in pairs(clients) do
    table.insert(attached_lsps[bufnr], client.name)
  end
end

local function get_attached_lsps(bufnr)
    bufnr = bufnr or vim.api.nvim_get_current_buf()
    return attached_lsps[bufnr] or {}
end

-- Set up autocommands to refresh attached LSPs
local function setup_lsp_refresh_autocommands()
  -- Define an autocommand group
  local group_id = vim.api.nvim_create_augroup("LSPAttachRefresh", { clear = true })

  -- Run on buffer enter to list attached LSPs
  vim.api.nvim_create_autocmd("BufEnter", {
    group = group_id,
    callback = refresh_attached_lsps,
  })

  -- Run when an LSP client attaches
  vim.api.nvim_create_autocmd("LspAttach", {
    group = group_id,
    callback = refresh_attached_lsps,
  })

  -- Run when an LSP client detaches
  vim.api.nvim_create_autocmd("LspDetach", {
    group = group_id,
    callback = refresh_attached_lsps,
  })
end

-- Initialize autocommands
setup_lsp_refresh_autocommands()


require("lualine").setup({
    sections = {
        lualine_c = {
            function ()
                local lsps = get_attached_lsps()
                return "LSP: " .. table.concat(lsps, ", ")
            end
        }
    },
    theme = 'tokyonight'
})
