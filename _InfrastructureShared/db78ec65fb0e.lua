-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/db78ec65fb0e 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_no_security") and (mp.getfilesize)() < 67108864 then
  return mp.INFECTED
end
return mp.CLEAN

