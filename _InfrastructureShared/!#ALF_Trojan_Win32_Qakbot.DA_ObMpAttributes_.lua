-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_Trojan_Win32_Qakbot.DA_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) < 40 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "^c:\\users\\.*appdata\\local\\temp\\temp1_.*.zip\\.*.iso$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

