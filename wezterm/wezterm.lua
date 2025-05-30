-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action
-- This will hold the configuration.
local config = wezterm.config_builder()

config.keys = {
	{ key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
	{ key = 'C', mods = 'CTRL|SHIFT', action = act.CopyTo 'ClipboardAndPrimarySelection' },
    { key = 'W', mods = 'CTRL|SHIFT', action = act.CloseCurrentTab {confirm = true} },
    { key = 'N', mods = 'CTRL|SHIFT', action = act.ToggleFullScreen },
    { key = 'h', mods = 'CTRL|SHIFT', action = act.ActivateTabRelative(-1) },
    { key = 'l', mods = 'CTRL|SHIFT', action = act.ActivateTabRelative(1) },
    { key = 'h', mods = 'CTRL|ALT', action = act.MoveTabRelative(-1) },
    { key = 'l', mods = 'CTRL|ALT', action = act.MoveTabRelative(1) },
    { key = 'R', mods = 'CTRL|SHIFT', action = act.PromptInputLine {
        description = "Enter a new name for the tab",
        action = wezterm.action_callback(function (window, _, line)
            if line then
                window:active_tab():set_title(line)
            end
        end)
    }}
}

-- This is where you actually apply your config choices
config.window_decorations = 'RESIZE'
config.color_scheme = 'Tokyo Night'
config.use_fancy_tab_bar = false
config.enable_scroll_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.tab_max_width = 25
config.enable_tab_bar = true

config.colors = {
	scrollbar_thumb = "#505050",
	tab_bar = {
		background = "None",

		active_tab = {
			fg_color = "#adadad",
			bg_color = "#222436",

			intensity = 'Bold',
			underline = 'Single',
			italic = false,
			strikethrough = false
		},

		inactive_tab = {
			fg_color = "#adadad",
			bg_color = "None",
            intensity = 'Half'
		},

		inactive_tab_hover = {
			fg_color = "#adadad",
			bg_color = "#505050",
			underline = 'Single',
			italic = true,
		},

		new_tab = {
			fg_color = "#adadad",
			bg_color = "None",
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
