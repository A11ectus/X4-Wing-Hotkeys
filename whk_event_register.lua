-- ffi setup 
local ffi = require("ffi") 
local C = ffi.C 

local menu = {}
local whk = {}
local Lib = require("extensions.sn_mod_support_apis.lua_library")

function init()

    menu = Lib.Get_Egosoft_Menu("InteractMenu")

    RegisterEvent("whk_event_clearorders", whk.clearOrders)
end

function whk.clearOrders(_, params)
	ship = ConvertStringTo64Bit(tostring(params))
	menu.orderRemove(ship, false, false, false)
end

init()