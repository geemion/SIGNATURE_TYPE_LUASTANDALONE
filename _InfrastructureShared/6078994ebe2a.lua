-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6078994ebe2a 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:IsVB6") then
  return mp.INFECTED
end
return mp.CLEAN

