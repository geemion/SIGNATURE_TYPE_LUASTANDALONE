-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8540ec1dfd73 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 983040 and l_0_0 <= 1179648 and pehdr.NumberOfSections == 3 then
  return mp.INFECTED
end
return mp.CLEAN

