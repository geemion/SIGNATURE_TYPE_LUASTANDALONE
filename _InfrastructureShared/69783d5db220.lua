-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69783d5db220 

-- params : ...
-- function num : 0
if peattributes.no_security and peattributes.isexe and peattributes.isvbnative then
  return mp.INFECTED
end
return mp.CLEAN

