-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/255788a8ced2d 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched then
  return mp.INFECTED
end
return mp.CLEAN

