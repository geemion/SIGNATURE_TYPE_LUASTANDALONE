-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/173788ac50a7b 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_hasexports") and (mp.get_mpattribute)("pea_no_boundimport") and not (mp.get_mpattribute)("pea_no_tls") then
  return mp.INFECTED
end
return mp.CLEAN

