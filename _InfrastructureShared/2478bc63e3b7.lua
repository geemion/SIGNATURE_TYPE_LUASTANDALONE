-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2478bc63e3b7 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.hasexports and peattributes.no_security then
  return mp.INFECTED
end
return mp.CLEAN

