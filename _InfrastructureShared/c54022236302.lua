-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c54022236302 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 5 then
  return mp.INFECTED
end
return mp.CLEAN

