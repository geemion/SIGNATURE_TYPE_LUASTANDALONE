-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c378ebbdb681_Flags_1 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC42: Unhandled construct in 'MakeBoolean' P3

if ((not (hstrlog[1]).matched and not (hstrlog[2]).matched and not (hstrlog[3]).matched and (hstrlog[6]).matched) or (hstrlog[5]).matched) and (hstrlog[4]).matched and (hstrlog[8]).matched then
  return mp.INFECTED
end
return mp.CLEAN

