-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45400ee80529 

-- params : ...
-- function num : 0
if peattributes.x86_image and peattributes.packed then
  return mp.INFECTED
end
return mp.CLEAN

