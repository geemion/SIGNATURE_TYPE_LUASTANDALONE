-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/79d78faa44c2_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil or l_0_0.ppid == nil then
  return mp.CLEAN
end
if TrackCustomPersistContextNameByPPID("query", l_0_0.ppid, "CapfetoxContextTriggerA") == true then
  return mp.INFECTED
end
return mp.CLEAN

