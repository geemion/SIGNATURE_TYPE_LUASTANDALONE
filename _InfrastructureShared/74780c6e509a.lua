-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/74780c6e509a 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
return mp.CLEAN

