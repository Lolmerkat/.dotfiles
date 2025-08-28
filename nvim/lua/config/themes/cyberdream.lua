require("cyberdream").setup({
    transparent = true,
    borderless_pickers = true,
    -- cache = true,

    extensions = {
        snacks = true
    },

    overrides = function (colors)
            local c = interpolate_colors(colors.magenta, colors.bg_highlight, 3)
            local d1, d2, d3 = c[1], c[2], c[3]

        return {
            CursorLineNr = { fg = colors.magenta },
            LineNrAbove1 = { fg = d1 },
            LineNrAbove2 = { fg = d2 },
            LineNrAbove3 = { fg = d3 },
            LineNrBelow1 = { fg = d1 },
            LineNrBelow2 = { fg = d2 },
            LineNrBelow3 = { fg = d3 },

            NonText = { fg = "#586269"}
        }
    end
})
