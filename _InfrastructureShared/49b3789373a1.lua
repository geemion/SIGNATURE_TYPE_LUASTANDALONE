-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/49b3789373a1 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[1]
local l_0_1 = l_0_0.utf8p1
local l_0_2 = l_0_0.utf8p2
local l_0_3 = (string.match)(l_0_2, "SystemToken:\"([%a%d]+)\";")
local l_0_4 = (string.match)(l_0_1, "Token:\"([%a%d]+)\";")
local l_0_5 = (string.match)(l_0_2, "Token:\"([%a%d]+)\";")
if l_0_4 ~= l_0_5 and l_0_5 == l_0_3 then
  return mp.INFECTED
end
return mp.CLEAN

