-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/74d73064a49e_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
TrackCustomPersistContextNameByPPID("set", l_0_0, "MimikatzTrigger")
;
(MpCommon.RequestSmsOnProcess)(l_0_0, MpCommon.SMS_SCAN_MED)
return mp.INFECTED

