-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/12f78cab4f252 

-- params : ...
-- function num : 0
if (hstrlog[4]).matched and (hstrlog[5]).matched then
  return mp.INFECTED
end
return mp.CLEAN

