-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ba78ea11d182 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_no_exports") and (mp.get_mpattribute)("pea_no_tls") and (mp.getfilesize)() >= 204800 and (mp.getfilesize)() < 229376 then
  return mp.INFECTED
end
return mp.CLEAN

