-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8e7867e5bade 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.hasexports and (mp.getfilesize)() < 10000 then
  return mp.INFECTED
end
return mp.CLEAN

