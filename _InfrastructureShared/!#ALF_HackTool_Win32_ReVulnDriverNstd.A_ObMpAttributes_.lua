-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_HackTool_Win32_ReVulnDriverNstd.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if not l_0_0 then
  return mp.CLEAN
end
if (string.find)(l_0_0, ":\\windows\\system32\\", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
if l_0_1 ~= nil then
  (MpCommon.RequestSmsOnProcess)(l_0_1, MpCommon.SMS_SCAN_MED)
end
return mp.INFECTED

