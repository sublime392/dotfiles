

function devLayout(eventName, params)
    hs.applescript('tell application "Keyboard Maestro Engine" to do script "vpn: Start CBS"')
    hs.execute('/usr/local/bin/code -n "/Users/baconcheesefry/code/vscode/ib-ng.code-workspace"')
    hs.execute('/usr/local/bin/code -n "/Users/baconcheesefry/code/vscode/ib-laravel.code-workspace"')
    hs.application.launchOrFocus("Safari")
    hs.application.launchOrFocus("Slack")
    hs.application.launchOrFocus("iTerm")
    hs.application.launchOrFocus("Trello")
    hs.application.launchOrFocus("Microsoft Teams")
    hs.application.launchOrFocus("Sococo")
    -- hs.application.launchOrFocus("Airmail")
    hs.application.launchOrFocus("Unibox")
    hs.application.launchOrFocus("Sonos")
    hs.application.launchOrFocus("Notes")

    -- local laravelName = hs.window.find("ib%-laravel"):title()
    -- local ngName = hs.window.find("ib%-ng"):title()
    local laptopScreen = "Color LCD"
    local bigScreen = "U4008B"
    local windowLayout = {
        {"Safari", nil, bigScreen, {x = 0.37, y = 0, w = 0.37, h = 0.5}, nil, nil},
        -- {nil, laravelName, bigScreen, {x = 0, y = 0.5, w = 0.37, h = 0.5}, nil, nil},
        -- {nil, ngName, bigScreen, {x = 0, y = 0, w = 0.37, h = 0.5}, nil, nil},
        {"Slack", nil, bigScreen, {x = 0.74, y = 0, w = 0.26, h = 0.25}, nil, nil},
        {"iTerm2", nil, bigScreen, {x = 0.74, y = 0.25, w = 0.26, h = 0.25}, nil, nil},
        {"Trello", nil, bigScreen, {x = 0.74, y = 0.5, w = 0.26, h = 0.25}, nil, nil},
        {"Microsoft Teams", nil, bigScreen, {x = 0.7, y = 0.75, w = 0.3, h = 0.25}, nil, nil},
        -- {"Sococo", nil, laptopScreen, {x = 0, y = 0.5, w = 0.5, h = 0.5}, nil, nil},
        {"Unibox", nil, laptopScreen, {x = 0.12, y = 0.12, w = 0.8, h = 0.5}, nil, nil},
        {"Sonos", nil, laptopScreen, {x = 0.2, y = 0.15, w = 0.6, h = 0.7}, nil, nil},
        {"Notes", nil, bigScreen, {x = 0.37, y = 0.85, w = 0.37, h = 0.15}, nil, nil}
    }
    if(hs.screen.find(bigScreen)) then
        hs.layout.apply(windowLayout)
    end

    hs.applescript('tell application "Keyboard Maestro Engine" to do script "iTerm: profile: IB Angular"')
    hs.applescript('tell application "Keyboard Maestro Engine" to do script "iTerm: profile: IB Angular"')
    hs.applescript('tell application "Keyboard Maestro Engine" to do script "iTerm: profile: IB Angular"')
    hs.applescript('tell application "Keyboard Maestro Engine" to do script "iTerm: profile: IB Laravel"')
    hs.applescript('tell application "Amphetamine" to start new session with options {duration:12, interval:hours, displaySleepAllowed:false}')
    -- hs.applescript('tell application "Keyboard Maestro Engine" to do script "iTerm: profile: IB Laravel Queue default"')
    -- hs.applescript('tell application "Keyboard Maestro Engine" to do script "iTerm: profile: IB Laravel Queue nonpbf"')
end
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", devLayout)
hs.urlevent.bind("dev-layout", devLayout)


function launchLaravelQueueDefault(eventName, params)
    hs.applescript('tell application "Keyboard Maestro Engine" to do script "iTerm: profile: IB Laravel Queue default"')
    hs.applescript('tell application "Keyboard Maestro Engine" to do script "iTerm: profile: IB Laravel Queue nonpbf"')
    hs.applescript('tell application "Keyboard Maestro Engine" to do script "iTerm: profile: IB Laravel Cron"')
end
hs.urlevent.bind("laravel-queue-default", launchLaravelQueueDefault)

-- function launchLaravelQueueNonPbf(eventName, params)
--     hs.applescript('tell application "Keyboard Maestro Engine" to do script "iTerm: profile: IB Laravel Queue nonpbf"')
-- end
-- hs.urlevent.bind("laravel-queue-nonpbf", launchLaravelQueueNonPbf)


function doneWorking(eventName, params)
    hs.applescript('tell application "Amphetamine" to end session')
    hs.applescript('tell application "Keyboard Maestro Engine" to do script "vpn: Stop CBS"')
    local closeable = hs.application.get('iTerm2')
    if (closeable ) then
        closeable:kill()
    end
    closeable = hs.application.get('Trello')
    if (closeable ) then
        closeable:kill()
    end
    closeable = hs.application.get('Sococo')
    if (closeable ) then
        closeable:kill()
    end
    closeable = hs.application.get('Microsoft Teams')
    if (closeable ) then
        closeable:kill()
    end
    closeable = hs.application.get('Code')
    if (closeable ) then
        closeable:kill()
    end
    closeable = hs.application.get('Sourcetree')
    if (closeable ) then
        closeable:kill()
    end
    closeable = hs.application.get('GitFox')
    if (closeable ) then
        closeable:kill()
    end
    closeable = hs.application.get('TablePlus')
    if (closeable ) then
        closeable:kill()
    end
    closeable = hs.application.get('Transmit')
    if (closeable ) then
        closeable:kill()
    end
end
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "J", doneWorking)
hs.urlevent.bind("dev-un-layout", doneWorking)


function usbDeviceCallback(data)
    if (data["productName"] == "iPhone") then
        if (data["eventType"] == "added") then
            devLayout()
        end
    end
end
-- usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
-- usbWatcher:start()


function moveCodeWindow(codeWindow)
    hs.alert.show("code window created")
    local laptopScreen = "Color LCD"
    local bigScreen = "U4008B"
    local position = {x = 0, y = 0.5, w = 0.37, h = 0.5}
    if(codeWindow:title():find("ib%-ng")) then
        position = {x = 0, y = 0, w = 0.37, h = 0.5}
    end

    local windowLayout = {
        {nil, codeWindow, bigScreen, position, nil, nil}
    }
    if(hs.screen.find(bigScreen)) then
        hs.layout.apply(windowLayout)
    end
end
local wf=hs.window.filter
wf_code = wf.new(false):setAppFilter('Code',{allowTitles={'ib%-laravel %(Workspace%)','ib%-ng %(Workspace%)'}})
wf_code:subscribe(wf.windowCreated,moveCodeWindow, true)

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



