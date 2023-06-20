-- [input-method]
for key, value in pairs({
    ["1"] = "com.apple.keylayout.ABC",
    ["2"] = "com.sogou.inputmethod.sogou.pinyin",
    ["3"] = "com.google.inputmethod.Japanese.base",
}) do
    hs.hotkey.bind({ "ctrl" }, key, function()
        hs.keycodes.currentSourceID(value)
    end)
end

-- [input-volume]
hs.hotkey.bind({ "ctrl" }, "F10", function()
    for _, input_device in ipairs(hs.audiodevice.allInputDevices()) do
        local level = input_device:inputVolume()
        if level ~= nil then
            if level == 0 then
                level = 50
            else
                level = 0
            end
            input_device:setInputVolume(level)
        end
    end
end)
hs.hotkey.bind({ "ctrl" }, "F11", function()
    for _, input_device in ipairs(hs.audiodevice.allInputDevices()) do
        local level = input_device:inputVolume()
        if level ~= nil then
            level = level - 5
            if level < 0 then
                level = 0
            end
            input_device:setInputVolume(level)
        end
    end
end)
hs.hotkey.bind({ "ctrl" }, "F12", function()
    for _, input_device in ipairs(hs.audiodevice.allInputDevices()) do
        local level = input_device:inputVolume()
        if level ~= nil then
            level = level + 5
            if level > 100 then
                level = 100
            end
            input_device:setInputVolume(level)
        end
    end
end)

-- [app]
hs.hotkey.bind({ "cmd" }, "return", function()
    hs.application.launchOrFocus("WezTerm")
    -- hs.execute("open -n -a 'WezTerm'")
end)

hs.hotkey.bind({ "cmd" }, "b", function()
    hs.application.launchOrFocus("Google Chrome")
    -- hs.execute("open -n -a 'Google Chrome'")
end)

-- [yabai] restart
hs.hotkey.bind({ "alt", "cmd" }, "r", function()
    hs.execute("/opt/homebrew/bin/yabai --restart-service")
end)

-- [yabai] quict
hs.hotkey.bind({ "alt", "cmd" }, "q", function()
    hs.execute("/homebrew/bin/yabai --stop-service")
end)

-- [yabai] focus space
for key, value in pairs({
    ["1"] = 1,
    ["2"] = 2,
    ["3"] = 3,
    ["4"] = 4,
    ["5"] = 5,
    ["6"] = 6,
    ["7"] = 7,
    ["8"] = 8,
    ["9"] = 9,
    ["0"] = 10,
}) do
    hs.hotkey.bind({ "cmd" }, key, function()
        hs.execute("/opt/homebrew/bin/yabai -m space --focus " .. tostring(value))
    end)
end

-- [yabai] focus window
for key, value in pairs({
    ["k"] = "north",
    ["l"] = "east",
    ["n"] = "south",
    ["h"] = "west",
}) do
    hs.hotkey.bind({ "cmd" }, key, function()
        hs.execute("/opt/homebrew/bin/yabai -m window --focus " .. tostring(value))
    end)
end

-- [yabai] swap window
for key, value in pairs({
    ["k"] = "north",
    ["l"] = "east",
    ["n"] = "south",
    ["h"] = "west",
}) do
    hs.hotkey.bind({ "cmd", "shift" }, key, function()
        hs.execute("/opt/homebrew/bin/yabai -m window --swap " .. tostring(value))
    end)
end

-- [yabai] move window to space
for key, value in pairs({
    ["1"] = 1,
    ["2"] = 2,
    ["3"] = 3,
    ["4"] = 4,
    ["5"] = 5,
    ["6"] = 6,
    ["7"] = 7,
    ["8"] = 8,
    ["9"] = 9,
    ["0"] = 10,
}) do
    hs.hotkey.bind({ "cmd", "shift" }, key, function()
        hs.execute("/opt/homebrew/bin/yabai -m window --space " .. tostring(value))
    end)
end

-- [yabai] toggle fullscreen
hs.hotkey.bind({ "cmd", "shift" }, "f", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --toggle native-fullscreen")
end)

-- [yabai] toggle float
hs.hotkey.bind({ "cmd", "shift" }, "t", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --toggle float")
end)

-- [yabai] toggle split
hs.hotkey.bind({ "cmd", "shift" }, "s", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --toggle split")
end)

-- [yabai] resize window
hs.hotkey.bind({ "alt", "cmd" }, "h", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --resize left:-20:0")
end)
hs.hotkey.bind({ "alt", "cmd" }, "l", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --resize right:20:0")
end)
hs.hotkey.bind({ "alt", "cmd" }, "k", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --resize top:0:-20")
end)
hs.hotkey.bind({ "alt", "cmd" }, "j", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --resize bottom:0:20")
end)
hs.hotkey.bind({ "alt", "cmd", "shift" }, "h", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --resize right:-20:0")
end)
hs.hotkey.bind({ "alt", "cmd", "shift" }, "l", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --resize left:20:0")
end)
hs.hotkey.bind({ "alt", "cmd", "shift" }, "k", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --resize bottom:0:-20")
end)
hs.hotkey.bind({ "alt", "cmd", "shift" }, "j", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --resize top:0:20")
end)

-- [yabai] move window
hs.hotkey.bind({ "ctrl", "alt", "cmd" }, "l", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --move rel:20:0")
end)
hs.hotkey.bind({ "ctrl", "alt", "cmd" }, "h", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --move rel:-20:0")
end)
hs.hotkey.bind({ "ctrl", "alt", "cmd" }, "k", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --move rel:0:-20")
end)
hs.hotkey.bind({ "ctrl", "alt", "cmd" }, "j", function()
    hs.execute("/opt/homebrew/bin/yabai -m window --move rel:0:20")
end)
