-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/12b7889100375 

-- params : ...
-- function num : 0
if peattributes.isdll == false and (mp.getfilesize)() < 5048000 then
  return mp.INFECTED
end
return mp.CLEAN

