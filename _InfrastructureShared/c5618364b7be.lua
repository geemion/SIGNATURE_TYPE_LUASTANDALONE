-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c5618364b7be 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 600000 then
  return mp.INFECTED
end
return mp.CLEAN

