-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/388fd6ff6771 

-- params : ...
-- function num : 0
local l_0_0 = (hstrlog[1]).hitcount
local l_0_1 = (hstrlog[2]).hitcount
if l_0_0 > 15 or l_0_1 > 15 or l_0_0 + l_0_1 > 15 then
  return mp.INFECTED
end
return mp.CLEAN

