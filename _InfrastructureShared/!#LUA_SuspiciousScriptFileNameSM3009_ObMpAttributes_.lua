-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_SuspiciousScriptFileNameSM3009_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "calculation%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "ref%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "gallery%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "accounting%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "card%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "contract%#%d%d%d%d.iso") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

