-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a078d6e2b611 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 57344 and (mp.getfilesize)() < 65024 then
  return mp.INFECTED
end
return mp.CLEAN

