-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/357884e84590 

-- params : ...
-- function num : 0
if peattributes.isdll == true and peattributes.hasexports == true then
  return mp.INFECTED
end
return mp.CLEAN

