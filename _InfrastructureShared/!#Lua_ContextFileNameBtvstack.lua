-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ContextFileNameBtvstack 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_2 == nil or l_0_1 == nil then
  return mp.CLEAN
end
if (l_0_1:find("\\application data\\$") ~= nil or l_0_1:find("\\appdata\\roaming\\$") ~= nil) and l_0_2 == "btvstack.dll" then
  (mp.set_mpattribute)("Lua:ContextFileNameBtvstack.A")
end
return mp.CLEAN

