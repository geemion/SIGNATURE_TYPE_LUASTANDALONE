-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9540f06b1e70 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_no_security") and (mp.getfilesize)() < 512000 then
  return mp.INFECTED
end
return mp.CLEAN

