-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2c78bfe1fc3d 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable and peattributes.hasappendeddata then
  return mp.INFECTED
end
return mp.CLEAN

