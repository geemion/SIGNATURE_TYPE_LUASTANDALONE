-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e078d0ee7f7c 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if (l_0_0 > 2000000 and l_0_0 < 5500000) or l_0_0 > 8000000 and l_0_0 < 11000000 then
  return mp.INFECTED
end
return mp.CLEAN

