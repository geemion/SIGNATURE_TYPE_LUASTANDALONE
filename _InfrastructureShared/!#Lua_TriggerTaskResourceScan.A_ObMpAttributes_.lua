-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_TriggerTaskResourceScan.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if (sysio.IsFileExists)(l_0_0) then
  (mp.TriggerScanResource)("taskscheduler", l_0_0)
  return mp.INFECTED
end
return mp.CLEAN

