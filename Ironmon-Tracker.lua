-- NDS Ironnon Tracker
-- Created by OnlySpaghettiCode, largely based on the Ironmon Tracker by besteon and other contributors
IronmonTracker = {}

function IronmonTracker.startTracker()
	local version = client.getversion()
	
	if tonumber(version:sub(1, 1)) == 2 and tonumber(version:sub(3, 4)) < 9 then
		FormsUtils.popupDialog(
				"Cette version de Bizhawk n'est pas compatible avec le tracker.",
				250,
				50,
				FormsUtils.POPUP_DIALOG_TYPES.WARNING,
				false
		)
		return true
	end
	local Main = dofile("ironmon_tracker/Main.lua")
	gui.clearImageCache()
	collectgarbage()
	local main = Main()
	main.run()
end

IronmonTracker.startTracker()