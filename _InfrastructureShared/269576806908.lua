-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/269576806908 

-- params : ...
-- function num : 0
if (mp.crc32)(-1, epcode, 1, 16) == 3504257948 then
  return mp.INFECTED
end
return mp.CLEAN

