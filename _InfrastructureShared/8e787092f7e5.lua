-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8e787092f7e5 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_ismsil") and (mp.get_mpattribute)("pea_isdll") then
  return mp.INFECTED
end
return mp.CLEAN

