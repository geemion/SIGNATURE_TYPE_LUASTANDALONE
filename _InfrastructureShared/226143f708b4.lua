-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/226143f708b4 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 >= 114688 and l_0_0 <= 159744 and pehdr.NumberOfSections == 6 then
  return mp.INFECTED
end
return mp.CLEAN

