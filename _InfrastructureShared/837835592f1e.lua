-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/837835592f1e 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.getfilesize)() < 338000 then
  return mp.INFECTED
end
return mp.CLEAN

