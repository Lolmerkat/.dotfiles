-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action
-- This will hold the configuration.
local config = wezterm.config_builder()

config.keys = {
	{ key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
	{ key = 'C', mods = 'CTRL|SHIFT', action = act.CopyTo 'ClipboardAndPrimarySelection' },
    { key = 'W', mods = 'CTRL|SHIFT' , action = act.CloseCurrentTab {confirm = true} },
    { key = 'N', mods = 'CTRL|SHIFT' , action = act.ToggleFullScreen },
}

-- This is where you actually apply your config choices
config.window_decorations = 'RESIZE'
config.color_scheme = 'Tokyo Night'
config.use_fancy_tab_bar = false
config.enable_scroll_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.tab_max_width = 25

config.colors = {
	scrollbar_thumb = "#505050",
	tab_bar = {
		background = "#202020",

		active_tab = {
			fg_color = "#adadad",
			bg_color = "#202020",

			intensity = 'Bold',
			underline = 'None',
			italic = false,
			strikethrough = false
		},

		inactive_tab = {
			fg_color = "#adadad",
			bg_color = "#505050",
		},

		inactive_tab_hover = {
			fg_color = "#adadad",
			bg_color = "#505050",
			underline = 'Single',
			italic = true,
		},

		new_tab = {
			fg_color = "#adadad",
			bg_color = "#505050",
		},

		new_tab_hover = {
			fg_color = "#adadad",
			bg_color = "#505050",
			underline = 'Single',
			italic = true,
		},
	}
}

config.font =
	wezterm.font('JetBrains Mono', { weight = 'Medium'})

-- and finally, return the configuration to wezterm
return config
