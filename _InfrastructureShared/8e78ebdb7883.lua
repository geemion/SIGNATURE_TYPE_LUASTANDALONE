-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8e78ebdb7883 

-- params : ...
-- function num : 0
if peattributes.no_security == true and peattributes.isdll == true and (mp.getfilesize)() < 100000 then
  return mp.INFECTED
end
return mp.CLEAN

