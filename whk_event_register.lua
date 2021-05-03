-- ffi setup 
local ffi = require("ffi") 
local C = ffi.C 

local menu = {}
local whk = {}
local Lib = require("SirNukesModSupportAPIs")

function init()

    menu = Lib.Get_Egosoft_Menu("MapMenu")

    RegisterEvent(whk_event_Clear, whk.clearOrders)
end

whk.clearOrders(_, params)
    local ship, removedefaultorder, removeassignment, removedockorder = string.match(params, "(.+);(.+);(.+);(.+)")
    
    menu.orderRemove(ship, removedefaultorder, removeassignment, removedockorder)
end

init()