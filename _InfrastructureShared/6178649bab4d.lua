-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6178649bab4d 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.x86_image and peattributes.ismsil == false and peattributes.hasexports and (mp.getfilesize)() < 280000 then
  return mp.INFECTED
end
return mp.CLEAN

