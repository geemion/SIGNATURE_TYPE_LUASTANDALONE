-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/97d7ee09ce86 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.match)((string.lower)(l_0_0.image_path), "([^\\]+)$")
    if l_0_1 == "powershell.exe" then
      return mp.CLEAN
    end
    if l_0_1 == "cmd.exe" then
      return mp.CLEAN
    end
    ;
    (MpCommon.RequestSmsOnProcess)(l_0_0.ppid, MpCommon.SMS_SCAN_MED)
    ;
    (mp.AddDeferredBMAction)("SmsAsyncScanEvent", 10000)
    return mp.INFECTED
  end
  return mp.CLEAN
end

