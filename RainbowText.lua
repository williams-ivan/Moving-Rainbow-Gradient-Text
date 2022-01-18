--****************************************************
-- File: RainbowText.lua
--
-- Purpose: Gives a moving rainbow gradient effect to
--			the text of a Gui Object with text-
--			rendering properties.
--
-- Written By: JackOfAllTrades101 (Ivan)
--
-- Compiler: Roblox Studio & Visual Studio Code
--
--****************************************************

return function(guiObject, frequency)
	frequency = frequency or 1
	guiObject.RichText = true
	local total = 0
	local s = {}
	for c in string.gmatch(guiObject.Text, ".") do
		if string.match(c, "%s") then
			table.insert(s, c)
		else
			total += 1
			table.insert(s, '<font color="rgb(0, 0, 0)">')
			table.insert(s, c..'</font>')
		end
	end
	while task.wait() do
		local str = ""
		local count = total
		for _, sub in pairs(s) do
			if string.match(sub, "%a+%b()") then
				count -= 1
				local color = Color3.fromHSV(-math.atan(math.tan((os.clock() + count/math.pi)/frequency))/math.pi + 0.5, 1, 1)
				sub = string.gsub(sub, "%a+%b()", "rgb("..math.floor(color.R * 255)..", "..math.floor(color.G * 255)..", "..math.floor(color.B * 255)..")")
			end	
			str ..= sub
		end
		guiObject.Text = str
	end
end
