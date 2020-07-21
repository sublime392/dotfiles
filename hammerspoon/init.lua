hs.urlevent.bind(
    "someAlert",
    function(eventName, params)
        hs.alert.show("Received someAlert")
    end
)

hs.hotkey.bind(
    {"cmd", "alt", "ctrl"},
    "W",
    function()
        hs.notify.new({title = "Hammerspoon", informativeText = "Hello World"}):send()
    end
)

function devLayout(eventName, params)
    hs.execute('/usr/local/bin/code -n "/Users/baconcheesefry/code/vscode/ib-ng.code-workspace"')
    hs.execute('/usr/local/bin/code -n "/Users/baconcheesefry/code/vscode/ib-laravel.code-workspace"')
    hs.application.launchOrFocus("Safari")
    hs.application.launchOrFocus("Slack")
    hs.application.launchOrFocus("iTerm2")
    hs.application.launchOrFocus("Trello")
    hs.application.launchOrFocus("Microsoft Teams")
    hs.application.launchOrFocus("Sococo")
    hs.application.launchOrFocus("Airmail")
    hs.application.launchOrFocus("Sonos")

    local laravelName = hs.window.find("ib%-laravel"):title()
    local ngName = hs.window.find("ib%-ng"):title()
    local laptopScreen = "Color LCD"
    local bigScreen = "U4008B"
    local windowLayout = {
        {"Safari", nil, bigScreen, {x = 0.37, y = 0, w = 0.37, h = 0.5}, nil, nil},
        {nil, laravelName, bigScreen, {x = 0, y = 0.5, w = 0.37, h = 0.5}, nil, nil},
        {nil, ngName, bigScreen, {x = 0, y = 0, w = 0.37, h = 0.5}, nil, nil},
        {"Slack", nil, bigScreen, {x = 0.74, y = 0, w = 0.26, h = 0.25}, nil, nil},
        {"iTerm2", nil, bigScreen, {x = 0.74, y = 0.25, w = 0.26, h = 0.25}, nil, nil},
        {"Trello", nil, bigScreen, {x = 0.74, y = 0.5, w = 0.26, h = 0.25}, nil, nil},
        {"Microsoft Teams", nil, bigScreen, {x = 0.7, y = 0.75, w = 0.3, h = 0.25}, nil, nil},
        {"Sococo", nil, laptopScreen, {x = 0, y = 0.5, w = 0.5, h = 0.5}, nil, nil},
        {"Airmail", nil, laptopScreen, {x = 0.12, y = 0.12, w = 0.8, h = 0.5}, nil, nil},
        {"Sonos", nil, laptopScreen, {x = 0.2, y = 0.15, w = 0.6, h = 0.7}, nil, nil}
    }
    hs.layout.apply(windowLayout)
end

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", devLayout)

hs.urlevent.bind("dev-layout", devLayout)

function reloadConfig(files)
    doReload = false
    for _, file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded again again")
