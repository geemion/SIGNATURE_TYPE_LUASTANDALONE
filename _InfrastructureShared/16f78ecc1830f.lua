-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/16f78ecc1830f 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.no_security == true and (mp.getfilesize)() >= 8192 and (mp.getfilesize)() <= 12288 then
  return mp.INFECTED
end
return mp.CLEAN

