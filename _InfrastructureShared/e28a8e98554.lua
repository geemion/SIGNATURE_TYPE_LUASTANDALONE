-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e28a8e98554 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PACKED_WITH:[EmbeddedEnc]") then
  return mp.INFECTED
end
return mp.CLEAN

