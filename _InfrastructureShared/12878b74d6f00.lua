-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/12878b74d6f00 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_no_exports") and not (mp.get_mpattribute)("pea_no_tls") and (mp.getfilesize)() >= 786432 and (mp.getfilesize)() < 819200 then
  return mp.INFECTED
end
return mp.CLEAN

