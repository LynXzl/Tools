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
	     if string.lower(string.sub(v.Name, 1, string.len(Text))) == string.lower(Text) then
		 SelectedPlayer = v
	     end
	end
	return SelectedPlayer
  end,
}

return Functions

--[[
local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/LynXzl/Tools/main/Functions.lua"))()
Functions:Notify("Hello Guys","I think it works","5")
]]--
