-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_InsideResourcesWithNoExt 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 == nil or (string.len)(l_0_0) < 15 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "->", 1, true) == nil then
  return mp.CLEAN
end
if (string.find)(l_0_0, "/resources/", 1, true) == nil then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:InsideResources")
if (string.match)(l_0_0, "/resources/[^%.]+$") == nil then
  return mp.CLEAN
end
return mp.INFECTED

