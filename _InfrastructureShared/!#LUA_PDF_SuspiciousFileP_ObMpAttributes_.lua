-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_PDF_SuspiciousFileP_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "normal_5fa%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil or (string.find)(l_0_0, "normal_5fb%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil or (string.find)(l_0_0, "normal_5fc%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil or (string.find)(l_0_0, "normal_5fd%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil or (string.find)(l_0_0, "normal_5fe%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil or (string.find)(l_0_0, "normal_5ff%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

