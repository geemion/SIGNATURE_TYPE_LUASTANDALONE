-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55780bba1654 

-- params : ...
-- function num : 0
if peattributes.no_security and peattributes.isdll and peattributes.ismsil then
  return mp.INFECTED
end
return mp.CLEAN

