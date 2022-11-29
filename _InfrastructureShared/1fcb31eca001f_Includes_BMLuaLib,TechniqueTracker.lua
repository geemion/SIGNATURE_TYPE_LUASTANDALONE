-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1fcb31eca001f_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
if IsProcessExcludedFromRansomwareAnalysis() == true then
  return mp.CLEAN
end
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil and IsDetectionThresholdMetLinux(l_0_0.ppid) then
  AddResearchData("BM", true)
  reportRelatedBmHits()
  addRelatedProcess()
  RemediateProcessTreeForLinux()
  return mp.INFECTED
end
TrackPidAndTechniqueBM("BM", "T1082", "Discovery")
return mp.CLEAN

