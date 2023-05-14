local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

local uname = io.popen("uname"):read()

if uname == "Linux" then
	return {
		color_scheme = "Builtin Solarized Dark",
		font = wezterm.font_with_fallback({
			"Hack Nerd Font",
			"苹方-简",
		}),
		font_size = 12,
		keys = {
			{ key = "LeftArrow", mods = "CMD", action = act.ActivateTabRelative(-1) },
			{ key = "RightArrow", mods = "CMD", action = act.ActivateTabRelative(1) },
			{ key = "LeftArrow", mods = "OPT", action = act.SendString("\x1bb") },
			{ key = "RightArrow", mods = "OPT", action = act.SendString("\x1bf") },
			{ key = "c", mods = "CTRL|SHIFT", action = wezterm.action.CopyTo("ClipboardAndPrimarySelection") },
			{ key = "v", mods = "CTRL|SHIFT", action = act.PasteFrom("Clipboard") },
			{ key = "t", mods = "OPT", action = act.SpawnTab("CurrentPaneDomain") },
			{ key = "w", mods = "OPT", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
			{ key = "1", mods = "OPT", action = act.ActivateTab(0) },
			{ key = "2", mods = "OPT", action = act.ActivateTab(1) },
			{ key = "3", mods = "OPT", action = act.ActivateTab(2) },
			{ key = "4", mods = "OPT", action = act.ActivateTab(3) },
			{ key = "5", mods = "OPT", action = act.ActivateTab(4) },
			{ key = "6", mods = "OPT", action = act.ActivateTab(5) },
			{ key = "7", mods = "OPT", action = act.ActivateTab(6) },
			{ key = "8", mods = "OPT", action = act.ActivateTab(7) },
			{ key = "LeftArrow", mods = "ALT", action = act.ActivateTabRelative(-1) },
			{ key = "RightArrow", mods = "ALT", action = act.ActivateTabRelative(1) },
		},
	}
else
	return {
		color_scheme = "Builtin Solarized Dark",
		font = wezterm.font_with_fallback({
			"Hack Nerd Font",
			"苹方-简",
		}),
		font_size = 14,
		keys = {
			{ key = "LeftArrow", mods = "CMD", action = act.ActivateTabRelative(-1) },
			{ key = "RightArrow", mods = "CMD", action = act.ActivateTabRelative(1) },
			{ key = "LeftArrow", mods = "OPT", action = act.SendString("\x1bb") },
			{ key = "RightArrow", mods = "OPT", action = act.SendString("\x1bf") },
		},
	}
end
