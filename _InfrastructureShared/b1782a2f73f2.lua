-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b1782a2f73f2 

-- params : ...
-- function num : 0
if peattributes.isvbpcode or peattributes.isvbnative then
  return mp.INFECTED
end
return mp.CLEAN

