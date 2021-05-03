-- ffi setup 
local ffi = require("ffi") 
local C = ffi.C 
ffi.cdef[[ 
 	UniverseID GetPlayerID(void);
 ]]
 
local function init() 
    DebugError("Wing Hotkeys: extension_check Init") 
	
	local extensions = GetExtensionList()
	local asto = false
	local auo = false
	local playerID = ConvertStringTo64Bit(tostring(C.GetPlayerID()))
	
    for _,extension in ipairs(extensions) do
        if extension.id == "ws_2437198154" and tonumber(extension.version) >= 3.40 and extension.enabled == true then
			asto = true
        end
		
        if extension.id == "ws_2459574093" and tonumber(extension.version) >= 1.20 and extension.enabled == true then
			auo = true
        end
		
		if asto==true and auo==true then
			break
		end
    end
		
	if asto == true then
	    DebugError("Wing Hotkeys: Enabling support for Subsystem Targeting Orders")
		SetNPCBlackboard(playerID, "$WHK_STO_Enabled", true)
	else
		DebugError("Wing Hotkeys: Subsystem Targeting Orders >= v3.40 not found, disabling support")
		SetNPCBlackboard(playerID, "$WHK_STO_Enabled", false)
	end

	if auo == true then
	    DebugError("Wing Hotkeys: Enabling support for Urgent Orders")
		SetNPCBlackboard(playerID, "$WHK_AUO_Enabled", true)
	else
		DebugError("Wing Hotkeys: Urgent Orders >= v1.20 not found, disabling support")
		SetNPCBlackboard(playerID, "$WHK_AUO_Enabled", false)
	end
		
end 
 
init()