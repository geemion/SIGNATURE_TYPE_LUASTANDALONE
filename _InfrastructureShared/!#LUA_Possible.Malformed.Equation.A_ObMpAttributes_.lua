-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_Possible.Malformed.Equation.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 100000 or l_0_0 > 3500000 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
if (l_0_1:sub(1024, 1056)):find("R%zo%zo%zt%z %zE%zn%zt%zr%zy%z") == nil then
  return mp.CLEAN
end
if (l_0_1:sub(2049, 2049)):find("[\026\028]") == nil then
  return mp.CLEAN
end
local l_0_2, l_0_3, l_0_4 = (l_0_1:sub(2048, 2054)):find("([\026\028]...)")
if l_0_4 == nil then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
l_0_1 = tostring((mp.readfile)(2064, 26624))
l_0_2 = l_0_1:find("\255\255\255\255\255\255\255\255" .. l_0_4)
-- DECOMPILER ERROR at PC69: Overwrote pending register: R3 in 'AssignReg'

if l_0_2 ~= nil and (string.find)(l_0_1:sub(l_0_2, l_0_3), "\255.\005....[-\005]....\255") ~= nil then
  (mp.set_mpattribute)("LUA:Malformed.Equation.A")
end
return mp.CLEAN

