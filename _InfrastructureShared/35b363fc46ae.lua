-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/35b363fc46ae 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[1]
local l_0_1 = l_0_0.utf8p1
local l_0_2 = l_0_0.utf8p2
if (string.match)(l_0_1, "Token:\"([%a%d]+)\";") == (string.match)(l_0_2, "Token:\"([%a%d]+)\";") then
  return mp.CLEAN
end
return mp.INFECTED

