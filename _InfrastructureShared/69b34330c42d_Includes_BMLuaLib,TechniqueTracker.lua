-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b34330c42d_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = "remote_file_created_taint"
local l_0_1, l_0_2 = nil, nil
if (this_sigattrlog[5]).matched then
  l_0_1 = (this_sigattrlog[5]).ppid
  l_0_2 = (this_sigattrlog[5]).image_path
end
if l_0_1 ~= nil and l_0_2 ~= nil and isTainted(l_0_2, l_0_0) then
  TrackPidAndTechniqueBM(l_0_1, "T1053.003", "Execution_SuspiciousCronActivity")
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN

