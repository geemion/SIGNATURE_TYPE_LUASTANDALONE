-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2f78c0556f4a 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 200000 then
  return mp.INFECTED
end
return mp.CLEAN
