-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/be784ffe92fc 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.getfilesize)() < 200000 then
  return mp.INFECTED
end
return mp.CLEAN

