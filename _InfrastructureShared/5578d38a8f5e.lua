-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5578d38a8f5e 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.no_security == false and peattributes.ismsil == false then
  return mp.INFECTED
end
return mp.CLEAN

