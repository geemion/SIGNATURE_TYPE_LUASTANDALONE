-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/14661034bc882 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 400000 and (mp.getfilesize)() < 600000 and pehdr.NumberOfSections == 3 and peattributes.ismsil == true then
  return mp.INFECTED
end
return mp.CLEAN

