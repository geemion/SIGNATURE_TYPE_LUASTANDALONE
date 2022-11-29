-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b3594b8430_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if not (string.find)(l_0_0, "^c:\\") and not (string.find)(l_0_0, "^\\\\") then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\chrome.exe", 1, true) or (string.find)(l_0_0, "es.bex.", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.QueryPersistContext)(l_0_0, "ExecutedPENoCert")
if not l_0_1 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1571", "command_control_l")
return mp.INFECTED

