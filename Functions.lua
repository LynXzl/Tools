local Data = loadstring(game:HttpGet("https://raw.githubusercontent.com/LynXzl/Tools/main/GetData.lua"))()

--Functions

local Functions = {
  --Fires TouchInterest
  Touch = function(name,Part)
       if Part then
	        firetouchinterest(Part,game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"),0)
         	wait()
        	firetouchinterest(Part,game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"),1)
	end
  end,
  --Notify
  Notify = function(name,NTitle,NText,NDuration,NIcon)
  	game.StarterGui:SetCore("SendNotification", {
        	Title = NTitle;
       		Text = NText;
      		Duration = tostring(NDuration);
		Icon = NIcon or nil;
    	})
  end,
  --FindPlayer
  Find = function(name,Text)
  	local SelectedPlayer
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	     if string.lower(string.sub(v.Name, 1, string.len(Text))) == string.lower(Text) or string.lower(string.sub(v.DisplayName, 1, string.len(Text))) == string.lower(Text) then
		 SelectedPlayer = v
	     end
	end
	if SelectedPlayer then
	     return SelectedPlayer
	end
  end,
  --Gets Root Part Position
  GetRootPos = function(name)
  	return game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
  end,
  AutoJoinDiscord = function(name)
  	local req = request or syn and syn.request
	req({
		Url = "http://127.0.0.1:6463/rpc?v=1",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["Origin"] = "https://discord.com"
		},
		Body = game:GetService("HttpService"):JSONEncode({
			cmd = "INVITE_BROWSER",
			args = {
				code = Data.Server.InviteTag
			},
			nonce = game:GetService("HttpService"):GenerateGUID(false)
		}),
	})
  end,
}

return Functions

--[[
local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/LynXzl/Tools/main/Functions.lua"))()
Functions:Notify("Hello Guys","I think it works","5")
warn(Functions:GetRootPos())
]]--
