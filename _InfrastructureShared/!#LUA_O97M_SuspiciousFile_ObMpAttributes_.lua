-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_O97M_SuspiciousFile_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 == nil or (string.len)(l_0_0) <= 5 and (mp.getfilesize)() > 28672 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "virusshare_[%x]+", 1) ~= nil or (string.find)(l_0_0, "deliveryo%d%dss.xls") ~= nil or (string.find)(l_0_0, "%d%d%.%d%d%.2021_siparisler%.doc") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

