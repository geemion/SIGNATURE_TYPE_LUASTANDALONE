-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c578f6dc3672 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.getfilesize)() < 100000 then
  return mp.INFECTED
end
return mp.CLEAN

