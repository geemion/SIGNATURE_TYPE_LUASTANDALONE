-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/75b3884fcae4_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if IsDetectionThresholdMet("BM") then
  TrackPidAndTechniqueBM("BM", "T1059", "commandscriptthreshold")
  return mp.INFECTED
end
return mp.CLEAN

