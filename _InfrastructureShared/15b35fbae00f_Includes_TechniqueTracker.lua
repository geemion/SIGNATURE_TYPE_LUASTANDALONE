-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b35fbae00f_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.find)(l_0_0, "\\program files", 1, true) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1003", "credentialdumping")
return mp.INFECTED

