-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6761f8341df9 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 5 and pehdr.SizeOfImage >= 20480 and pehdr.SizeOfImage <= 131072 and (mp.getfilesize)() >= 1048576 then
  return mp.INFECTED
end
return mp.CLEAN

