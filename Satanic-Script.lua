 if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
hum = owner.Character.Humanoid
plr = owner
Character = owner.Character
char = Character
plrgui = plr.PlayerGui
immortal = {}
hum.Health = math.huge
hum2 = hum:Clone()
NEVER = true
IT = Instance.new
it = IT
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
norms = true
sine = 0
animpose = true
local remote = Instance.new("RemoteEvent", char)
remote.Name = "ReplicationEvent"
local rootpart = char.HumanoidRootPart
local RS = char.Torso["Right Shoulder"]
local LS = char.Torso["Left Shoulder"]
local RH = char.Torso["Right Hip"]
local LH = char.Torso["Left Hip"]
local NK = char.Torso["Neck"]
local Tors = char.Torso
local rootj = char.HumanoidRootPart.RootJoint
local RSnor = RS.C0
local LSnor = LS.C0
local RHnor = RH.C0
local LHnor = LH.C0
local NKnor = NK.C0
local rootjnor = rootj.C0
hum2.Parent = game.ReplicatedStorage
pentagram = IT("Part", Character)
pentagram.Size = VT(8, 0.5, 8)
pentagram.Position = VT(0, 1, 0)
pentagram.Transparency = 0
pentagram.CanCollide = false
pentagram.Anchored = true
a = pentagram
a.TopSurface = "Smooth"
a.BottomSurface = "Smooth"
a.BrickColor = BrickColor.new("Dark red")
local img = Instance.new("Decal",pentagram)
img.Texture = "rbxassetid://358864688"
img.Face = "Top"
img.Transparency = 0
local sound = Instance.new("Sound", owner.Character.Torso)
sound.SoundId = "rbxassetid://2142995292"
sound.Looped = true
sound.Volume = 10
if not sound.IsLoaded then
    sound.Loaded:wait()
end
sound:Play()
sick = sound
local idleanim = Instance.new("Animation")
idleanim.Name = "Roblox Idle Animation"
idleanim.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local idleanimplay = hum:LoadAnimation(idleanim)
idleanimplay:Play()
wait(0.1)
if char:FindFirstChild("Animate") then
    char.Animate:Destroy()
end
local main = it("GuiMain", plrgui)
local ned = Instance.new("TextLabel",main)
ned.ZIndex = 2
ned.Font = "Bodoni"
ned.BackgroundTransparency = 1
ned.BorderSizePixel = 0.65
ned.Size = UDim2.new(0.6,0,0.6,0)
ned.Position = UDim2.new(0,0,0,0)
ned.TextScaled = true
ned.TextStrokeTransparency = 0
ned.Text = "ErrOr"
ned.TextSize = 48
ned.Rotation = 1
ned.TextXAlignment = "Left"
ned.TextYAlignment = "Top"
for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
		if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
	elseif v:IsA("JointInstance") then
		table.insert(immortal,{v,v.Parent,nil,nil,nil})
	end
end
for e = 1, #immortal do
	if immortal[e] ~= nil then
		local STUFF = immortal[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
if levitate then
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
else
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
end
	end
end
function immortality()
	for e = 1, #immortal do
		if immortal[e] ~= nil then
			local STUFF = immortal[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART == Root then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				hum:Remove()
				PART.Parent = PARENT
				hum = Instance.new("Humanoid",Character)
if levitate then
eyo1:Remove()
eyo2:Remove()
end
                                hum.Name = "Humanoid"
hum.Health = math.huge
			end
		end
	end
end
coroutine.wrap(function()
while true do
if hum.Health < .1 then
immortality()
end
wait()
pentagram.Position = pentagram.Position:lerp(Character.Torso.Position + Vector3.new(0,-3,0), 0.5)
a.CFrame = a.CFrame * CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
end
end)()
for i = 0, 2, 0.1 / 3 do
NK.C0 = NK.C0:Lerp(NKnor * CFrame.Angles(0, 0.5, 0), 0.1)
RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(0, 1, 2), 0.15)
        LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(0, -1, -2), 0.15)
        LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-.1, 0, 0 * math.sin(sine / -1)), 0.15)
        RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.1, 0, 0 * math.sin(sine / -1)), 0.15)
        rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.Angles(0, 0, 0 * math.sin(sine / 1)), 0.1)
end
wait(3)
for i = 0, 2, 0.1 / 3 do
NK.C0 = NK.C0:Lerp(NKnor * CFrame.Angles(0, -0.5, 0), 1)
RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(0, 1, 2), 0.15)
        LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(0, -1, -2), 0.15)
        LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-.1, 0, 0 * math.sin(sine / -1)), 0.15)
        RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.1, 0, 0 * math.sin(sine / -1)), 0.15)
        rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.Angles(0, 0, 0 * math.sin(sine / 1)), 0.1)
end
wait(3)
while game:GetService("RunService").Heartbeat:Wait() do
sine = sine + 1
if norms == true then
 if remote.Parent == char then
        remote.Name = "ReplicationEvent"
    else
        remote = Instance.new("RemoteEvent", char)
    end
    local touchfloor = workspace:FindPartOnRay(Ray.new(char.HumanoidRootPart.CFrame.Position, ((CFrame.new(char.HumanoidRootPart.Position, char.HumanoidRootPart.Position - Vector3.new(0, 1, 0))).LookVector).Unit * 4), char)
    if char.HumanoidRootPart.Velocity.Magnitude > 1 and touchfloor then
        animpose = "Walking"
    elseif char.HumanoidRootPart.Velocity.Y > 0.5 and touchfloor == nil then
        animpose = "Jumping"
    elseif char.HumanoidRootPart.Velocity.Y < 0.5 and touchfloor == nil then
        animpose = "Falling"
    else
        animpose = "Idle"
    end
if animpose == "Idle" then
NK.C0 = NK.C0:Lerp(NKnor * CFrame.Angles(0.5, 0, 0), 0.1)
RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.2, 0, 0), 0.15)
        LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.2, 0, 0), 0.15)
        LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-.1, 0, 0 * math.sin(sine / -1)), 0.15)
        RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.1, 0, 0 * math.sin(sine / -1)), 0.15)
        rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.Angles(0, 0, 0 * math.sin(sine / 1)), 0.1)
elseif animpose == "Walking" then
NK.C0 = NK.C0:Lerp(NKnor * CFrame.Angles(0, 0, -0.1 * math.sin(sine / 10)), 0.1)
RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(0.2 * math.sin(sine / 5), 0, 1 * math.sin(sine / -10)), 0.15)
        LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(0.2 * math.sin(sine / 5), 0, -1 * math.sin(sine / 10)), 0.15)
        LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.05 * math.sin(sine / 10), 0, -1 * math.sin(sine / 10)), 0.15)
        RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.05 * math.sin(sine / 10), 0, 1 * math.sin(sine / -10)), 0.15)
        rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.Angles(0, 0.1 * math.sin(sine / 10), 0.2 * math.sin(sine / 10)), 0.1)
end
end
end
coroutine.resume(coroutine.create(function()
while wait(0.5) do
local ranmar = math.random(1,5)
if ranmar == 1 then
ned.Text = "ERrOR"
elseif ranmar == 2 then
ned.Text = "eRRoR"
elseif ranmar == 3 then
ned.Text = "erRor"
elseif ranmar == 4 then
ned.Text = "ErrOr"
else
ned.Text = "erROR"
end
end
end))
