-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b3d28ccba4_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = "remote_file_created_taint"
local l_0_1 = nil
if (this_sigattrlog[2]).matched then
  l_0_1 = (this_sigattrlog[2]).utf8p1
end
if l_0_1 ~= nil and isTainted(l_0_1, l_0_0) then
  TrackPidAndTechniqueBM("BM", "T1562.001", "DefenseEvasion")
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN

