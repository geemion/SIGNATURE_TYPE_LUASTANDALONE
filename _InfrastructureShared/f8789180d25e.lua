-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f8789180d25e 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2064000 then
  return mp.INFECTED
end
return mp.CLEAN

