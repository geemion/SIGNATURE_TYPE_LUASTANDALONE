-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7578f5067b33 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 2 and (hstrlog[3]).hitcount > 2 then
  return mp.INFECTED
end
return mp.CLEAN

