-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d47819a67176 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 50000 or l_0_0 > 150000 and l_0_0 < 400000 then
  return mp.INFECTED
end
return mp.CLEAN

