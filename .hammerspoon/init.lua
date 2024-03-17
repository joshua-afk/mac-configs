-- local meh = {"alt", "shift", "ctrl"}
local hyper = {"alt", "shift", "ctrl", "cmd"}
local hotkey = hs.hotkey

-- Reload
hotkey.bind(hyper, "[", function()
    hs.notify.show("Restarted!", "", "")
    hs.reload()
end)

-- Toggle iTerm
hotkey.bind(hyper, "T", function()
    hs.application.launchOrFocus("iTerm")
end)

-- Toggle Slack
hotkey.bind(hyper, "S", function()
    hs.application.launchOrFocus("Slack")
end)

-- Firefox
hotkey.bind(hyper, "F", function()
    hs.application.launchOrFocus("Firefox")
end)

-- Firefox Dev
hotkey.bind(hyper, "R", function()
    hs.application.launchOrFocus("/Applications/Firefox Developer Edition.app")
end)

-- Marta
hotkey.bind(hyper, "E", function()
    hs.application.launchOrFocus("Marta")
end)

hotkey.bind(hyper, "O", function()
    hs.application.launchOrFocus("Obsidian")
end)

-- Clear Terminal
hotkey.bind(hyper, "C", function()
    hs.eventtap.keyStroke({"ctrl"}, "l")
end)

-- Alfred
hotkey.bind(hyper, "space", function()
    hs.eventtap.keyStroke({"alt"}, "space")
end)
