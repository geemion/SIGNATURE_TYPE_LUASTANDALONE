-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3540ce54c438 

-- params : ...
-- function num : 0
if peattributes.isdamaged then
  (pe.set_peattribute)("isdamaged", false)
  return mp.INFECTED
end
return mp.CLEAN

