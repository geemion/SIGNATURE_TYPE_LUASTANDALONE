-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3c78f7dc0d01 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() >= 536576 and (mp.getfilesize)() <= 540672 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

