-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1fd77e0062f4 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if ((string.sub)(l_0_1, -1) == "\\" or (string.find)(l_0_1, " \\ ", 1, true)) and ((string.find)(l_0_1, "-s", 1, true) or (string.find)(l_0_1, "-i", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN

