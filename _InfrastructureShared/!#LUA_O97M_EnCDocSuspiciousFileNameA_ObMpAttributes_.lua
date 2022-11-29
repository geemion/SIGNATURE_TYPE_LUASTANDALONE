-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_O97M_EnCDocSuspiciousFileNameA_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 10 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "documentindex%-%d%d%d%d+%-12%d%d2021%.xlsb") ~= nil or (string.find)(l_0_0, "contractcopy%-%d%d%d%d+%-dec%-21%.xlsb") ~= nil or (string.find)(l_0_0, "debt%-details%-%d%d%d%d+%-%d%d%d%d2021%.xlsm") ~= nil or (string.find)(l_0_0, "service%-interrupt%-%d%d%d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "compliance%-report%-%d%d%d%d+%-mar%-%d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "compliancerep%-%d%d%d%d+%-apr%-%d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "applicationreject%-%d%d%d%d+%.xlsb") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

