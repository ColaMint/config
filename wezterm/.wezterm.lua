local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action

wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

return {
    color_scheme = "Builtin Solarized Dark",
    font = wezterm.font_with_fallback({
        "Hack Nerd Font",
        "苹方-简",
    }),
    font_size = 14,
    treat_east_asian_ambiguous_width_as_wide = true,
    keys = {
        { key = "LeftArrow", mods = "CMD", action = act.ActivateTabRelative(-1) },
        { key = "RightArrow", mods = "CMD", action = act.ActivateTabRelative(1) },
        { key = "LeftArrow", mods = "OPT", action = act.SendString("\x1bb") },
        { key = "RightArrow", mods = "OPT", action = act.SendString("\x1bf") },
    },
}
