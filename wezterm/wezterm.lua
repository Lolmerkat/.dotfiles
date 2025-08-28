local wezterm = require 'wezterm'
local act = wezterm.action
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
    }},
}

config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.use_fancy_tab_bar = false
config.enable_scroll_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 25
config.enable_tab_bar = true

config.window_background_opacity = 0.44
config.win32_system_backdrop = 'Acrylic'
config.kde_window_background_blur = true
config.colors = require("cyberdream")
config.font = wezterm.font_with_fallback {
    { family = 'JetBrains Mono', weight = 'Medium' },
    'Noto Color Emoji'
}

-- and finally, return the configuration to wezterm
return config
