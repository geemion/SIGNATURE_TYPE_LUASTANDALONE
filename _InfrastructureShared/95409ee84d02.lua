-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/95409ee84d02 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_no_security") and (mp.getfilesize)() < 2048000 then
  return mp.INFECTED
end
return mp.CLEAN
