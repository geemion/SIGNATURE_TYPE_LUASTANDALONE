-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9540e85d2f88 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2536000 then
  return mp.INFECTED
end
return mp.CLEAN

