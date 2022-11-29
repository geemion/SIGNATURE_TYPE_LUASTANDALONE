-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/51b3eb83f2cf_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 100000000 then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if l_0_0 and ((string.find)(l_0_0, "\\system32\\svchost.exe", 1, true) or (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\run_windows_", 1, true) or (string.find)(l_0_0, "f5fltsrv.exe", 1, true) or (string.find)(l_0_0, "nslookup.exe", 1, true) or (string.find)(l_0_0, "netsh.exe", 1, true) or (string.find)(l_0_0, "deepl.exe", 1, true) or (string.find)(l_0_0, "browsercore64.exe", 1, true) or (string.find)(l_0_0, "sihclient.exe", 1, true) or (string.find)(l_0_0, "vmnat.exe", 1, true) or (string.find)(l_0_0, "fabricdnsservice.exe", 1, true) or (string.find)(l_0_0, "msedge.exe", 1, true) or (string.find)(l_0_0, "btservice.exe", 1, true) or (string.find)(l_0_0, "\\loom\\", 1, true)) then
  return mp.CLEAN
end
local l_0_1 = (bm.get_current_process_startup_info)()
local l_0_2 = (string.lower)(l_0_1.command_line)
if (string.find)(l_0_2, "clienthealth", 1, true) then
  return mp.CLEAN
end
local l_0_3 = GetTaintLevelHR()
if l_0_3 == nil or l_0_3 ~= "Medium" and l_0_3 ~= "High" then
  return mp.CLEAN
end
if IsDetectionThresholdMet("BM") and (IsTacticObservedForPid("BM", "processinjection_target") or IsTacticObservedForPid("BM", "discovery")) then
  return mp.INFECTED
end
return mp.CLEAN

