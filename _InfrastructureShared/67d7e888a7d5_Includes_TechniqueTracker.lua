-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/67d7e888a7d5_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if IsPidExcluded("CMDHSTR") then
  return mp.CLEAN
end
TrackPidAndTechnique("CMDHSTR", "T1053.005", "schtask_at")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI

