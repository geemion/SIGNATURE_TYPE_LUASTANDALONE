-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5078f8186365 

-- params : ...
-- function num : 0
if peattributes.isdriver then
  return mp.INFECTED
end
return mp.CLEAN

