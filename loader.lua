local StarterGui = game:GetService("StarterGui")
local BindableFunction = Instance.new("BindableFunction", script)
local Source = game:HttpGet("https://raw.githubusercontent.com/rbxluau/script-hub/main/"..(({
    [4777817887] = "blade_ball",
    [2820580801] = "ohio",
    [111958650] = "arsenal",
    [2440500124] = "doors",
    [3476371299] = "race_clicker",
    [3085257211] = "rainbow_friends",
    [73885730] = "prison_life"
})[game.GameId] or "universal")..".lua")

BindableFunction.OnInvoke = function(press)
    if press == "Yes" then
        queueonteleport(Source)
    end
end

StarterGui:SetCore("SendNotification", {
    Title = "Loading...",
    Text = "Do you want to enable queue_on_teleport?",
    Callback = BindableFunction,
    Button1 = "Yes",
    Button2 = "No"
})

loadstring(Source)()
