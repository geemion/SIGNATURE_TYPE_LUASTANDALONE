-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/153787ebd4e74 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:MsilOverlappingMethods") then
  return mp.INFECTED
end
return mp.CLEAN

