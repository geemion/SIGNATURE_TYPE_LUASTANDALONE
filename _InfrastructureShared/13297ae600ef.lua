-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/13297ae600ef 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PACKED_WITH:(SWC)") then
  return mp.INFECTED
end
return mp.CLEAN

