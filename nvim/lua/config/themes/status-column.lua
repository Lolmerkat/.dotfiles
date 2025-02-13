local line_above = "LineNrAbove"
local line_below = "LineNrBelow"

for i = 1, 3 do
    vim.api.nvim_set_hl(0, line_above .. i, {})
    vim.api.nvim_set_hl(0, line_below .. i, {})
end

function _G.custom_statuscolumn()
  local lnum   = vim.v.lnum       -- Absolute line number for this status line.
  local relnum = vim.v.relnum     -- Relative line number (0 on the current line).
  local curr   = vim.fn.line(".") -- Current line in the window.
  local total  = vim.fn.line("$") -- Total number of lines (to compute a field width).
  local width  = math.max(3, #tostring(total)) -- Field width based on the maximum number of digits.

  if relnum == 0 then
    -- Current line: format the absolute number left-aligned in a field of fixed width,
    -- then explicitly append one space as padding.
    return string.format("%%#CursorLineNr#%-" .. width .. "d", lnum) .. " "
  else
    -- For non-current lines, choose the appropriate gradient highlight group.
    local group = ""
    if lnum < curr then
      if relnum == 1 then
        group = "LineNrAbove1"
      elseif relnum == 2 then
        group = "LineNrAbove2"
      elseif relnum == 3 then
        group = "LineNrAbove3"
      else
        group = "LineNrAbove" -- Use the default group for further lines.
      end
    else
      if relnum == 1 then
        group = "LineNrBelow1"
      elseif relnum == 2 then
        group = "LineNrBelow2"
      elseif relnum == 3 then
        group = "LineNrBelow3"
      else
        group = "LineNrBelow" -- Default group.
      end
    end

    -- Non-current lines: format the relative number right-aligned in a field of fixed width.
    return string.format("%%#%s#%" .. width .. "d", group, relnum)
  end
end
