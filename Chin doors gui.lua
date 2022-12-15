
--library
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/DXuwu/Mercury-Lib-but-i-edited-something/main/Mercury%20Lib%20Chin.lua"))()
-- end of library
--gui
local GUI = Mercury:Create{
    Name = "DX",
    Size = UDim2.fromOffset(500, 300),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}
--end of gui
--tabs
local MainTab = GUI:Tab{
	Name = "主要",
	Icon = "rbxassetid://8569322835"
}
--end of tabs 
MainTab:Button{
            Name = "十字架",
            Description = "宣传片特效",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/Doors/Crucifix.lua"))()
            end
             }
MainTab:Button{
            Name = "Seek十字架",
            Description = "Seek 哟哟哟",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/RmdComunnityScriptsProvider/AngryHub/main/Seek%20Crucifix.lua"))()
            end
             }
MainTab:Button{
            Name = "万圣节十字架",
            Description = "虽然现在都不是万圣节哈哈",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Mye123/MyeWareHub/main/Halloween%20Crucifix"))()
            end
             }
MainTab:Button{
            Name = "手电筒",
            Description = "但是不是Doors里面的手电",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/DXuwu/flashlight-lmao/main/flashlight.lua"))()
            end  
            }
--end of item tab haha
--entity
local EntityTab = GUI:Tab{
    Name="怪物生成",
}

--rush
EntityTab:Button{
    Name = "Rush",
    Description = "生成Rush",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DXuwu/test/main/Entity%20Spawn%20By%20Vynixu%20but/rush.txt"))() 
end}
EntityTab:Button{
    Name = "Ambush",
    Description = "生成Ambush",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DXuwu/test/main/Entity%20Spawn%20By%20Vynixu%20but/rush.txt"))() 
end}

local CharTab = GUI:Tab{
    Name = "人物"
}

CharTab:Toggle{
    Name="哈哈开启跳跃",
    CurrentValue=false,
    Flag="enableJump",
    Callback=function(val)
        if val==true then
            con=game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
                if gameProcessed then return end
                if input.KeyCode==Enum.KeyCode.Space then
                    isJumping=true
                    repeat 
                        task.wait()
                        if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):GetState()==Enum.HumanoidStateType.Freefall then else
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState(3) end
                    until isJumping==false
                end
            end)

            con2=game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessed)
                if gameProcessed then return end
                if input.KeyCode==Enum.KeyCode.Space then
                    isJumping=false
                end
            end)
        else con:Disconnect() con2:Disconnect() end
    end
}
local gameTab = GUI:Tab{
    Name = "修改游戏"
}

gameTab:Button{
    Name = "MC房间",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/y2WmccLk"))()
    end
}


gameTab:Button{
    Name = "深海石头房【伟大的老六夜提供】",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iCherryKardes/Doors/main/Floor%202%20Mod"))()
    end
}



gameTab:Button{
    Name = " 101房【伟大的老六夜提供】",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DXuwu/replicator-lol/main/abc.txt"))()
    end
}

local ziliaoTab = GUI:Tab{
    Name = "资料"
}

ziliaoTab:Button{
    Name = "作者DX"
}

ziliaoTab:Button{
    Name = "QQ群"
}
ziliaoTab:Button{
    Name= "若被倒卖请立即联系我"
}
