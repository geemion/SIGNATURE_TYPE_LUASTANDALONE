-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8bb30a41bfe6_Includes_BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[1]).utf8p1
if not l_0_0 then
  return mp.CLEAN
end
l_0_0 = (string.match)(l_0_0:lower(), "\\(mpksl[%w]+)")
local l_0_1 = getService(l_0_0)
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (this_sigattrlog[1]).utf8p2
if not l_0_2 then
  return mp.CLEAN
end
l_0_2 = l_0_2:lower()
if l_0_2 ~= l_0_0 then
  return mp.INFECTED
end
return mp.CLEAN

