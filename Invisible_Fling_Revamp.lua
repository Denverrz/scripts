local library = loadstring(game:HttpGet("https://pastebin.com/raw/4bkx1mLs"))()
local iyflyspeed = 1
local Players = game:GetService("Players")

function NOFLY()
	FLYING = false
	Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
end

local w1 = library:CreateWindow("Main")
w1:Slider("Fly Speed", {
    min = 1,
    max = 50,
    flag = 'fs'
 }, function(v)
    iyflyspeed = v;
end)

w1:Button("Start Fling", function()
    local savedpos = Players.LocalPlayer.Character.HumanoidRootPart.Position
    spawn(function()
        game.StarterGui:SetCore("SendNotification",  {
            Title = "Progress";
            Text = "1%";
            Icon = "";
            Duration = 3;
        })
    end)

    local ch = game.Players.LocalPlayer.Character
    local prt = Instance.new("Model", workspace)
    local z1 = Instance.new("Part", prt)
    z1.Name = "Torso"
    z1.CanCollide = false
    z1.Anchored = true
    local z2 = Instance.new("Part", prt)
    z2.Name = "Head"
    z2.Anchored = true
    z2.CanCollide = false
    local z3 = Instance.new("Humanoid", prt)
    z3.Name = "Humanoid"
    z1.Position = Vector3.new(0, 9999, 0)
    z2.Position = Vector3.new(0, 9991, 0)
    game.Players.LocalPlayer.Character = prt
    wait(5)
    game.StarterGui:SetCore("SendNotification",  {
        Title = "Progress";
        Text = "50%";
        Icon = "";
        Duration = 4;
    })
    game.Players.LocalPlayer.Character = ch
    wait(6)
    game.StarterGui:SetCore("SendNotification",  {
        Title = "Complete";
        Text = "Loaded!";
        Icon = "";
        Duration = 5;
    })

    local plr = game.Players.LocalPlayer
    mouse = plr:GetMouse()

    local Hum = Instance.new("Humanoid")
    Hum.Parent = game.Players.LocalPlayer.Character

    local root = game.Players.LocalPlayer.Character.HumanoidRootPart

    for i, v in pairs(plr.Character:GetChildren()) do
        if v ~= root and v.Name ~= "Humanoid" then
            v:Destroy()
        end
    end

    workspace.CurrentCamera.CameraSubject = root

    local se = Instance.new("SelectionBox", root)
    se.Adornee = root

    game:GetService("RunService").Stepped:connect(
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
        end
    )
    game:GetService("RunService").RenderStepped:connect(
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
        end
    )

    power = 999999 -- change this to make it more or less powerful

    power = power * 10

    ---
    wait(.1)
    local bambam = Instance.new("BodyThrust")
    bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    bambam.Force = Vector3.new(power, 0, power)
    bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

    local plr = game.Players.LocalPlayer
    local torso = root
    local flying = true
    local deb = true
    local ctrl = {f = 0, b = 0, l = 0, r = 0}
    local lastctrl = {f = 0, b = 0, l = 0, r = 0}
    local maxspeed = 120
    local speed = 15

    groot = root

    local Players = game:GetService("Players")
    local IYMouse = Players.LocalPlayer:GetMouse()
    local vfly = false
    local vehicleflyspeed = 1
    
    function sFLY(vfly)
        repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and Players.LocalPlayer.Character:FindFirstChild('Humanoid')
        repeat wait() until IYMouse
        local T = Players.LocalPlayer.Character.HumanoidRootPart
        local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        local SPEED = 0
    
        function FLY()
            FLYING = true
            local BG = Instance.new('BodyGyro', T)
            local BV = Instance.new('BodyVelocity', T)
            BG.P = 9e4
            BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.cframe = T.CFrame
            BV.velocity = Vector3.new(0, 0, 0)
            BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
            spawn(function()
                repeat wait()
                Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                    SPEED = 50
                elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                    SPEED = 0
                end
                if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                else
                    BV.velocity = Vector3.new(0, 0, 0)
                end
                BG.cframe = workspace.CurrentCamera.CoordinateFrame
                until not FLYING
                CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                SPEED = 0
                BG:destroy()
                BV:destroy()
                Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            end)
        end
    
        IYMouse.KeyDown:connect(function(KEY)
            if KEY:lower() == 'w' then
                if vfly then
                    CONTROL.F = vehicleflyspeed
                else
                    CONTROL.F = iyflyspeed
                end
            elseif KEY:lower() == 's' then
                if vfly then
                    CONTROL.B = - vehicleflyspeed
                else
                    CONTROL.B = - iyflyspeed
                end
            elseif KEY:lower() == 'a' then
                if vfly then
                    CONTROL.L = - vehicleflyspeed
                else
                    CONTROL.L = - iyflyspeed
                end
            elseif KEY:lower() == 'd' then 
                if vfly then
                    CONTROL.R = vehicleflyspeed
                else
                    CONTROL.R = iyflyspeed
                end
            elseif KEY:lower() == 'e' then
                if vfly then
                    CONTROL.Q = vehicleflyspeed*2
                else
                    CONTROL.Q = iyflyspeed*2
                end
            elseif KEY:lower() == 'q' then
                if vfly then
                    CONTROL.E = -vehicleflyspeed*2
                else
                    CONTROL.E = -iyflyspeed*2
                end
            end
        end)
        IYMouse.KeyUp:connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = 0
            elseif KEY:lower() == 's' then
                CONTROL.B = 0
            elseif KEY:lower() == 'a' then
                CONTROL.L = 0
            elseif KEY:lower() == 'd' then
                CONTROL.R = 0
            elseif KEY:lower() == 'e' then
                CONTROL.Q = 0
            elseif KEY:lower() == 'q' then
                CONTROL.E = 0
            end
        end)
        FLY()
    end
    
    sFLY(false)
    wait()
    groot.CFrame = CFrame.new(savedpos)
end)

w1:Button("Respawn", function()
    spawn(function()
        game.StarterGui:SetCore("SendNotification",  {
            Title = "FE Invisible Fling";
            Text = "Respawning...";
            Icon = "";
            Duration = 10;
        })
    end)

    local saved = Players.LocalPlayer.Character.HumanoidRootPart.Position

    local ch = game.Players.LocalPlayer.Character
    local prt = Instance.new("Model", workspace)
    local z1 = Instance.new("Part", prt)
    z1.Name = "Torso"
    z1.CanCollide = false
    z1.Anchored = true
    local z2 = Instance.new("Part", prt)
    z2.Name = "Head"
    z2.Anchored = true
    z2.CanCollide = false
    local z3 = Instance.new("Humanoid", prt)
    z3.Name = "Humanoid"
    z1.Position = Vector3.new(0, 9999, 0)
    z2.Position = Vector3.new(0, 9991, 0)
    game.Players.LocalPlayer.Character = prt
    wait(5)
    game.Players.LocalPlayer.Character = ch
    local poop = nil
    repeat
        wait()
        poop = game.Players.LocalPlayer.Character:FindFirstChild("Head")
    until poop ~= nil
    NOFLY()
    wait(1)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(saved)
end)

local w2 = library:CreateWindow("Credits")
w2:Section("Original by Diemiers#4209")
w2:Section("Modified by Zyrex#4338")
w2:Section("Fly method by Infinite Yield")
