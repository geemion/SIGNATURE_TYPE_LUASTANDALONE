-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3261d0836231 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if pehdr.NumberOfSections == 6 and l_0_0 >= 15000000 and l_0_0 <= 22000000 then
  return mp.INFECTED
end
return mp.CLEAN

