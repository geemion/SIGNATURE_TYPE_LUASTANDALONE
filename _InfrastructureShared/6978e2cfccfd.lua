-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6978e2cfccfd 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 1300000 then
  return mp.INFECTED
end
return mp.CLEAN

