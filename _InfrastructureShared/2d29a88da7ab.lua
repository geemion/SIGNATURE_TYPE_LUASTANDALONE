-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2d29a88da7ab 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("c") then
  return mp.INFECTED
end
return mp.CLEAN

