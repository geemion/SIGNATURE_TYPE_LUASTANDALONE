-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c678fdf10e1b 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 >= 196608 and l_0_0 <= 217088 and (pehdr.NumberOfSections >= 5 or pehdr.NumberOfSections <= 7) then
  return mp.INFECTED
end
return mp.CLEAN

