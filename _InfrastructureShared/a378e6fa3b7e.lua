-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a378e6fa3b7e 

-- params : ...
-- function num : 0
if peattributes.ismsil and (mp.get_mpattribute)("pea_has_msilresources") and (mp.get_mpattribute)("pea_no_security") then
  return mp.INFECTED
end
return mp.CLEAN

