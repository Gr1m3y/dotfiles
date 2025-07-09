-- Load API for wezterm
local wezterm = require("wezterm")

-- Store config
local config = wezterm.config_builder()

-- Config options

config.window_background_opacity = 0.8 -- opacity as you please

config.automatically_reload_config = true
config.window_decorations = "RESIZE" -- Allows resizable window without top bar
config.enable_tab_bar = false
default_cursor_style = "BlinkingBar"
config.color_scheme = 'Solarized Dark (Gogh)'
font = wezterm.font("JetBrains Mono", { weight = "Bold" })
font.size = 12

-- Multiplexing options

config.leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
	-- Splitting panes
	{
		mods	= "LEADER",
		key	= "-",
		action	= wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
	},
	{
		mods	= "LEADER",
		key	= "=",
		action	= wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
	},

	-- Maximize/minimize pane
	{
		mods	= "LEADER",
		key	= "m",
		action	= wezterm.action.TogglePaneZoomState
	},

	-- Cycle panes
	{
		mods	= "CMD",
		key	= "j",
		action	= wezterm.action{ ActivatePaneDirection = "Prev" }
	},
	{
		mods	= "CMD",
		key	= "k",
		action	= wezterm.action { ActivatePaneDirection = "Next" }
	},

	-- Rotate panes
	{
		mods	= "LEADER",
		key	= "Space",
		action	= wezterm.action.RotatePanes "Clockwise"
	},

	-- shows pane selection mode and swaps active and selected panes
	{
		mods	= "LEADER",
		key	= "0",
		action	= wezterm.action.PaneSelect { mode = "SwapWithActive" }
	}
}

-- Inactive pane styling
config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.8,
}

-- Return config to term emulator (i.e., wizterm)
return config
