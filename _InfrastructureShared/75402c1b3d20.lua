-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/75402c1b3d20 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignatur") or peattributes.isexe == false then
  return mp.CLEAN
end
return mp.INFECTED

