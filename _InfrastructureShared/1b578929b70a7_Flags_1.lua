-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1b578929b70a7_Flags_1 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC47: Unhandled construct in 'MakeBoolean' P3

if (((hstrlog[9]).matched and (hstrlog[1]).matched) or (hstrlog[3]).matched or not (hstrlog[4]).matched or (not (hstrlog[5]).matched and not (hstrlog[6]).matched) or not (hstrlog[7]).matched or (hstrlog[8]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

