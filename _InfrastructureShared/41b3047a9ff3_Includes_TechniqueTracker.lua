-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b3047a9ff3_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if not (string.find)(l_0_0, "^c:\\") and not (string.find)(l_0_0, "^\\\\") then
  return mp.CLEAN
end
if l_0_0 and (string.find)(l_0_0, "\\program files", 1, true) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1071", "command_control_s")
return mp.INFECTED

