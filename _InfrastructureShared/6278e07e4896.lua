-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6278e07e4896 

-- params : ...
-- function num : 0
if (mp.getfilesize)() >= 5120 and (mp.getfilesize)() <= 6144 then
  return mp.INFECTED
end
return mp.CLEAN

