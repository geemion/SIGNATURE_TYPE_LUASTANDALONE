-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b3c074df47_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if not (string.find)(l_0_0, "^c:\\") and not (string.find)(l_0_0, "^\\\\") then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\activetraderpro", 1, true) or (string.find)(l_0_0, "\\fmr.", 1, true) or (string.find)(l_0_0, "\\fidelity", 1, true) or (string.find)(l_0_0, "\\dc.jobs", 1, true) or (string.find)(l_0_0, "\\quickquote", 1, true) or (string.find)(l_0_0, "\\pimsreminder.exe", 1, true) or (string.find)(l_0_0, "\\3cxphonelookup.exe", 1, true) or (string.find)(l_0_0, "\\indexingprocess.exe", 1, true) or (string.find)(l_0_0, "\\etrapac.exe", 1, true) or (string.find)(l_0_0, "\\pimspad.exe", 1, true) or (string.find)(l_0_0, "\\calippo.api.exe", 1, true) or (string.find)(l_0_0, "uniface.exe", 1, true) or (string.find)(l_0_0, "\\l2dotnetlauncher", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.QueryPersistContext)(l_0_0, "ExecutedPENoCert")
if not l_0_1 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1571", "command_control_n")
return mp.INFECTED

