local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

return {
    color_scheme = "Builtin Solarized Dark",
    font = wezterm.font("Hack Nerd Font", { weight = "Regular" }),
    font_size = 14,
}
