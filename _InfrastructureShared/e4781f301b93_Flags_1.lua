-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e4781f301b93_Flags_1 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC47: Unhandled construct in 'MakeBoolean' P3

-- DECOMPILER ERROR at PC47: Unhandled construct in 'MakeBoolean' P3

if ((hstrlog[1]).matched and (hstrlog[2]).matched) or not (hstrlog[3]).matched or not (hstrlog[4]).matched or not (hstrlog[6]).matched or not (hstrlog[7]).matched or (hstrlog[9]).matched then
  return mp.INFECTED
end
return mp.CLEAN

