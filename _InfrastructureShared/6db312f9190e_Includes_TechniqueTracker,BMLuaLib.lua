-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6db312f9190e_Includes_TechniqueTracker,BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil then
  AddResearchData(l_0_0.ppid, true)
  return mp.INFECTED
end
return mp.CLEAN

