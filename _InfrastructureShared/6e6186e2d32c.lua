-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6e6186e2d32c 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() >= 20480 and (mp.getfilesize)() <= 36864 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

