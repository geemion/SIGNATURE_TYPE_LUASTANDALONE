-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/86781d36315e 

-- params : ...
-- function num : 0
if peattributes.no_security and peattributes.isexe then
  return mp.INFECTED
end
return mp.CLEAN

