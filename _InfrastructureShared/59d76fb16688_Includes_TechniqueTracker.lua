-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/59d76fb16688_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
TrackPidAndTechnique(l_0_0, "sim_tool", "picus")
return mp.CLEAN

