-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/23d7590fd159_Flags_1_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if not l_0_1 or #l_0_1 <= 14 then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = (string.match)(l_0_1, " \"?([%d]+)\"? ")
if not l_0_2 then
  return mp.CLEAN
end
l_0_2 = tonumber(l_0_2)
local l_0_3 = (mp.GetPPidFromPid)(l_0_2)
local l_0_4 = (MpCommon.GetImagePathFromPid)(l_0_3)
if not l_0_4 then
  return mp.CLEAN
end
if (string.find)(l_0_4:lower(), "\\windows\\system32\\lsass.exe", 1, true) then
  TrackPidAndTechnique("CMDHSTR", "T1003.001", "credentialdumping_concrete", 86400)
  return mp.INFECTED
end
return mp.CLEAN

