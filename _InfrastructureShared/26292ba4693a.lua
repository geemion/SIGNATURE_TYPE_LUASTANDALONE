-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/26292ba4693a 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 80 then
  return mp.INFECTED
else
  return mp.LOWFI
end
return mp.CLEAN

