-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45b3e77226d5_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 200000000 then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if l_0_0 then
  if not (string.find)(l_0_0, "^c:\\") and not (string.find)(l_0_0, "^\\\\") then
    return mp.CLEAN
  end
  if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\steam", 1, true) or (string.find)(l_0_0, "\\langrisser", 1, true) or (string.find)(l_0_0, "\\hearthstone", 1, true) or (string.find)(l_0_0, "\\com3d2", 1, true) or (string.find)(l_0_0, "\\cm3d2", 1, true) or (string.find)(l_0_0, "\\overwolf", 1, true) or (string.find)(l_0_0, "\\subnautica", 1, true) or (string.find)(l_0_0, "\\ngen", 1, true) or (string.find)(l_0_0, "\\program\\revit", 1, true) or (string.find)(l_0_0, "\\lenovo", 1, true) or (string.find)(l_0_0, "\\opera\\", 1, true) or (string.find)(l_0_0, "\\application\\chrome", 1, true) or (string.find)(l_0_0, "\\syswow64\\msiexec", 1, true) or (string.find)(l_0_0, "\\application\\browser", 1, true) or (string.find)(l_0_0, "\\onedrive\\", 1, true) or (string.find)(l_0_0, "\\twitch\\", 1, true) or (string.find)(l_0_0, "\\coherentui", 1, true) or (string.find)(l_0_0, "game", 1, true) then
    return mp.CLEAN
  end
end
local l_0_1 = (bm.get_current_process_startup_info)()
TrackCustomPersistContextNameByPPID("set", l_0_1.ppid, "MimikatzTrigger")
;
(bm.request_SMS)(l_0_1.ppid, "M")
;
(bm.add_action)("SmsAsyncScanEvent", 1000)
return mp.INFECTED

