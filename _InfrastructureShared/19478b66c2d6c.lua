-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19478b66c2d6c 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
if not peattributes.isvbnative then
  return mp.CLEAN
end
return mp.INFECTED

