-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1f278011b9a86 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isdll") and (mp.getfilesize)() < 40960 then
  return mp.INFECTED
end
return mp.CLEAN

