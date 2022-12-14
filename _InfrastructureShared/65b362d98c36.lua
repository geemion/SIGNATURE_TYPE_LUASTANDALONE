-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/65b362d98c36 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[1]
if not l_0_0.utf8p1 or not l_0_0.utf8p2 then
  return mp.CLEAN
end
local l_0_1 = l_0_0.utf8p1
local l_0_2 = l_0_0.utf8p2
local l_0_3 = (string.match)(l_0_1, "PrivilegesPresent:\"([%a%d]+)\";")
local l_0_4 = (string.match)(l_0_2, "PrivilegesPresent:\"([%a%d]+)\";")
if l_0_3 == l_0_4 then
  return mp.CLEAN
end
local l_0_5 = tonumber(l_0_3, 16)
local l_0_6 = tonumber(l_0_4, 16)
if (mp.bitand)(l_0_5, 524288) == 524288 then
  return mp.CLEAN
end
if (mp.bitand)(l_0_6, 524288) ~= 524288 then
  return mp.CLEAN
end
return mp.INFECTED

