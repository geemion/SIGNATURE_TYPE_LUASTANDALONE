-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_Backdoor_Win32_SuspIISModule.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\windows\\system32\\inetsrv\\", 1, true) == nil and (string.find)(l_0_0, "\\windows\\syswow64\\inetsrv\\", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED

