-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/219b3c99ae976_Includes_BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.command_line
if (string.match)(l_0_1, "((%d+)%.(%d+)%.(%d+)%.(%d+))") or (string.match)(l_0_1, "[http://][https://][http://www.][https://www.]+%w+%.%w+[/%w%.]+") then
  return mp.INFECTED
end
return mp.CLEAN

