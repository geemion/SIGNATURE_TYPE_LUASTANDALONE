-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3c78374834cb 

-- params : ...
-- function num : 0
if peattributes.no_security == true and peattributes.isdll == true and (mp.getfilesize)() > 101000 and (mp.getfilesize)() < 102000 then
  return mp.INFECTED
end
return mp.CLEAN

