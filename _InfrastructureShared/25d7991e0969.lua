-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25d7991e0969 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == nil then
  return mp.CLEAN
end
if l_0_1 ~= "regsvr32.exe " then
  return mp.CLEAN
end
local l_0_2 = (mp.GetParentProcInfo)()
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (string.lower)(l_0_2.image_path)
if l_0_3:match("([^\\]+)$") ~= "regsvr32.exe" then
  return mp.CLEAN
end
;
(MpCommon.RequestSmsOnProcess)(l_0_0, MpCommon.SMS_SCAN_MED)
;
(MpCommon.RequestSmsOnProcess)(l_0_2.ppid, MpCommon.SMS_SCAN_MED)
return mp.INFECTED

