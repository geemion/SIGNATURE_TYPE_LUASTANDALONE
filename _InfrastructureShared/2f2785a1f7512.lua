-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2f2785a1f7512 

-- params : ...
-- function num : 0
if (not (hstrlog[5]).matched or (hstrlog[6]).matched) and mp.HSTR_WEIGHT == 3 then
  return mp.CLEAN
end
if peattributes.hasstandardentry then
  return mp.CLEAN
end
return mp.INFECTED

