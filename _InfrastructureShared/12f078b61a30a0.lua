-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/12f078b61a30a0 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.get_mpattribute)("pea_headerchecksum0") and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

