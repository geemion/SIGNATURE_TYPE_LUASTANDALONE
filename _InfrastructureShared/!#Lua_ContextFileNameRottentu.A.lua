-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ContextFileNameRottentu.A 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_2 == nil or l_0_1 == nil then
  return mp.CLEAN
end
if l_0_1:len() < 6 then
  return mp.CLEAN
end
if (string.sub)(l_0_1, -5) == "\\ucv\\" then
  (mp.set_mpattribute)("Lua:ContextFileNameRottentu.A")
end
return mp.CLEAN

