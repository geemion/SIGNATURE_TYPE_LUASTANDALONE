-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1317854c8aafe 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_no_exports") and (mp.get_mpattribute)("pea_relocs_stripped") and (mp.get_mpattribute)("pea_no_tls") and (mp.getfilesize)() >= 65536 and (mp.getfilesize)() < 77824 then
  return mp.INFECTED
end
return mp.CLEAN

