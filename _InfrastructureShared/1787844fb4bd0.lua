-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1787844fb4bd0 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.isdll == true and peattributes.hasexports == false and (mp.getfilesize)() < 1048576 then
  return mp.INFECTED
end
return mp.CLEAN

