-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/117d37727a9e1 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("LUA:FileSizeGT1M.A") then
  return mp.INFECTED
end
return mp.CLEAN

