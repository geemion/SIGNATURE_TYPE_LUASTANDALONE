-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_O97M_EnCDocSuspiciousFileNamePQ_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "form_%d%d%d%d%d%d+_%d%d%d%d2021%.xls") ~= nil or (string.find)(l_0_0, "information%[2021%.%d%d%.%d%d_%d%d%-%d%d%]%.xlsb") ~= nil or (string.find)(l_0_0, "new_working_conditions%[2021%.%d%d%.%d%d_%d%d%-%d%d%]%.xlsb") ~= nil or (string.find)(l_0_0, "document%[2021%.%d%d%.%d%d_%d%d%-%d%d%]%.xlsb") ~= nil or (string.find)(l_0_0, "termination letter%.%d%d%d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "termination letter %d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "notificaion%-%d%d%d+_2021%d%d%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "termination_%d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "document%-%d%d+_2021%d%d%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "emergreport%-%d%d%d%d%d%d+%-12%d%d2021%.xlsb") ~= nil or (string.find)(l_0_0, "reservationdetails%-%d%d%d%d%d%d+%-dec%-%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "positive_result_%d%d%d%d%d%d%d%d%.xls") ~= nil or (string.find)(l_0_0, "complaint%-%d%d%d%d%d%d+%-dec%-%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "summary%-%d%d%d%d%d%d+%-dec%d%d%.xlsb") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

