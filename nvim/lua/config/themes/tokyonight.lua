require("config.utils.colors")
require("tokyonight").setup {
    on_highlights = function(hl, colors)
        local colors = interpolate_colors(colors.magenta, colors.fg_gutter, 3)
        local distance1 = colors[1]
        local distance2 = colors[2]
        local distance3 = colors[3]

        hl.CursorLineNr = {
            fg = "#c099ff",
        }

        hl.LineNrAbove1 = {
            fg = distance1
        }
        hl.LineNrAbove2 = {
            fg = distance2
        }
        hl.LineNrAbove3 = {
            fg = distance3
        }

        hl.LineNrBelow1 = {
            fg = distance1
        }
        hl.LineNrBelow2 = {
            fg = distance2
        }
        hl.LineNrBelow3 = {
            fg = distance3
        }

    end,
}

vim.cmd("colorscheme tokyonight")
