hs.hotkey.bind({ "cmd" }, "1", function()
    hs.application.launchOrFocus("WezTerm")
end)

hs.hotkey.bind({ "cmd" }, "2", function()
    hs.application.launchOrFocus("Google Chrome")
end)

hs.hotkey.bind({ "cmd" }, "3", function()
    hs.application.launchOrFocus("Wechat")
end)

hs.hotkey.bind({ "cmd" }, "4", function()
    hs.application.launchOrFocus("Lark")
end)

hs.hotkey.bind({ "cmd" }, "5", function()
    hs.application.launchOrFocus("Mail")
end)

hs.hotkey.bind({ "ctrl" }, "1", function()
    hs.keycodes.currentSourceID("com.apple.keylayout.ABC")
end)

hs.hotkey.bind({ "ctrl" }, "2", function()
    hs.keycodes.currentSourceID("com.sogou.inputmethod.sogou.pinyin")
end)

hs.hotkey.bind({ "ctrl" }, "3", function()
    hs.keycodes.currentSourceID("com.google.inputmethod.Japanese.base")
end)

hs.hotkey.bind({ "cmd", "shift" }, "c", function()
    hs.window.focusedWindow():centerOnScreen()
end)

hs.hotkey.bind({ "cmd", "shift" }, "f", function()
    hs.window.focusedWindow():toggleZoom()
end)

hs.hotkey.bind({ "cmd", "shift" }, "m", function()
    hs.window.focusedWindow():maximize()
end)

-- disbale cmd+w/cmd+q for utm
utm_binds = {
    hs.hotkey.new({ "cmd" }, "w", nil, function() end),
    hs.hotkey.new({ "cmd" }, "q", nil, function() end),
}

function enableUTMBinds()
    for k, v in pairs(utm_binds) do
        v:enable()
    end
end

function disableUTMBinds()
    for k, v in pairs(utm_binds) do
        v:disable()
    end
end

local wf = hs.window.filter
wf_terminal = wf.new({ "UTM" })
wf_terminal:subscribe(wf.windowFocused, enableUTMBinds)
wf_terminal:subscribe(wf.windowUnfocused, disableUTMBinds)
