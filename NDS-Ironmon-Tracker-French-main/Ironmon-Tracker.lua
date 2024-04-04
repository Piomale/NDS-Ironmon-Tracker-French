-- NDS Ironnon Tracker
-- Created by OnlySpaghettiCode, largely based on the Ironmon Tracker by besteon and other contributors
IronmonTracker = {}

local tableAccents = {}
local tableAccents2 = {}
local checkAccent = false

function initAccent()
	tableAccents["À"] = "\192"
	tableAccents["Á"] = "\193"
	tableAccents["Â"] = "\194"
	tableAccents["Ã"] = "\195"
	tableAccents["Ä"] = "\196"
	tableAccents["Å"] = "\197"
	tableAccents["Æ"] = "\198"
	tableAccents["Ç"] = "\199"
	tableAccents["È"] = "\200"
	tableAccents["É"] = "\201"
	tableAccents["Ê"] = "\202"
	tableAccents["Ë"] = "\203"
	tableAccents["Ì"] = "\204"
	tableAccents["Í"] = "\205"
	tableAccents["Î"] = "\206"
	tableAccents["Ï"] = "\207"
	tableAccents["Ð"] = "\208"
	tableAccents["Ñ"] = "\209"
	tableAccents["Ò"] = "\210"
	tableAccents["Ó"] = "\211"
	tableAccents["Ô"] = "\212"
	tableAccents["Õ"] = "\213"
	tableAccents["Ö"] = "\214"
	tableAccents["Ø"] = "\216"
	tableAccents["Ù"] = "\217"
	tableAccents["Ú"] = "\218"
	tableAccents["Û"] = "\219"
	tableAccents["Ü"] = "\220"
	tableAccents["Ý"] = "\221"
	tableAccents["Þ"] = "\222"
	tableAccents["ß"] = "\223"
	tableAccents["à"] = "\224"
	tableAccents["á"] = "\225"
	tableAccents["â"] = "\226"
	tableAccents["ã"] = "\227"
	tableAccents["ä"] = "\228"
	tableAccents["å"] = "\229"
	tableAccents["æ"] = "\230"
	tableAccents["ç"] = "\231"
	tableAccents["è"] = "\232"
	tableAccents["é"] = "\233"
	tableAccents["ê"] = "\234"
	tableAccents["ë"] = "\235"
	tableAccents["ì"] = "\236"
	tableAccents["í"] = "\237"
	tableAccents["î"] = "\238"
	tableAccents["ï"] = "\239"
	tableAccents["ð"] = "\240"
	tableAccents["ñ"] = "\241"
	tableAccents["ò"] = "\242"
	tableAccents["ó"] = "\243"
	tableAccents["ô"] = "\244"
	tableAccents["õ"] = "\245"
	tableAccents["ö"] = "\246"
	tableAccents["ø"] = "\248"
	tableAccents["ù"] = "\249"
	tableAccents["ú"] = "\250"
	tableAccents["û"] = "\251"
	tableAccents["ü"] = "\252"
	tableAccents["ý"] = "\253"
	tableAccents["þ"] = "\254"
	tableAccents["ÿ"] = "\255"
	tableAccents["’"] = "'"
	tableAccents["Œ"] = "\140"
	tableAccents["œ"] = "\156"
	tableAccents["°"] = "\176"
	tableAccents2["À"] = "A"
	tableAccents2["Á"] = "A"
	tableAccents2["Â"] = "A"
	tableAccents2["Ã"] = "A"
	tableAccents2["Ä"] = "A"
	tableAccents2["Å"] = "A"
	tableAccents2["Æ"] = "AE"
	tableAccents2["Ç"] = "C"
	tableAccents2["È"] = "E"
	tableAccents2["É"] = "E"
	tableAccents2["Ê"] = "E"
	tableAccents2["Ë"] = "E"
	tableAccents2["Ì"] = "I"
	tableAccents2["Í"] = "I"
	tableAccents2["Î"] = "I"
	tableAccents2["Ï"] = "I"
	tableAccents2["Ð"] = "D"
	tableAccents2["Ñ"] = "N"
	tableAccents2["Ò"] = "O"
	tableAccents2["Ó"] = "O"
	tableAccents2["Ô"] = "O"
	tableAccents2["Õ"] = "O"
	tableAccents2["Ö"] = "O"
	tableAccents2["Ø"] = "O"
	tableAccents2["Ù"] = "U"
	tableAccents2["Ú"] = "U"
	tableAccents2["Û"] = "U"
	tableAccents2["Ü"] = "U"
	tableAccents2["Ý"] = "Y"
	tableAccents2["Þ"] = ""
	tableAccents2["ß"] = "B"
	tableAccents2["à"] = "a"
	tableAccents2["á"] = "a"
	tableAccents2["â"] = "a"
	tableAccents2["ã"] = "a"
	tableAccents2["ä"] = "a"
	tableAccents2["å"] = "a"
	tableAccents2["æ"] = "ae"
	tableAccents2["ç"] = "c"
	tableAccents2["è"] = "e"
	tableAccents2["é"] = "e"
	tableAccents2["ê"] = "e"
	tableAccents2["ë"] = "e"
	tableAccents2["ì"] = "i"
	tableAccents2["í"] = "i"
	tableAccents2["î"] = "i"
	tableAccents2["ï"] = "i"
	tableAccents2["ð"] = "d"
	tableAccents2["ñ"] = "n"
	tableAccents2["ò"] = "o"
	tableAccents2["ó"] = "o"
	tableAccents2["ô"] = "o"
	tableAccents2["õ"] = "o"
	tableAccents2["ö"] = "o"
	tableAccents2["ø"] = "o"
	tableAccents2["ù"] = "u"
	tableAccents2["ú"] = "u"
	tableAccents2["û"] = "u"
	tableAccents2["ü"] = "u"
	tableAccents2["ý"] = "y"
	tableAccents2["þ"] = ""
	tableAccents2["ÿ"] = "y"
	tableAccents2["’"] = "'"
	tableAccents2["Œ"] = "OE"
	tableAccents2["œ"] = "oe"
end

function stripChars(str)
	if checkAccent then
		print("ici")
		return str:gsub("[%z\1-\127\194-\244][\128-\191]*", tableAccents)
	end
    return str
end

function IgnoreChars(str)
	if checkAccent then
		 return str:gsub("[%z\1-\127\194-\244][\128-\191]*", tableAccents2)
	end
   
    return str
end

function IronmonTracker.startTracker()
	local version = client.getversion()
	if tonumber(version:sub(1, 1)) == 2 and tonumber(version:sub(3, 3)) < 9 then
		initAccent()
		checkAccent = true
	end
	local Main = dofile("ironmon_tracker/Main.lua")
	gui.clearImageCache()
	collectgarbage()
	local main = Main()
	main.run()
end

IronmonTracker.startTracker()