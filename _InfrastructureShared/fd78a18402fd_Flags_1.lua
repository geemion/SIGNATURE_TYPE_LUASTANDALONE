-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/fd78a18402fd_Flags_1 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC32: Unhandled construct in 'MakeBoolean' P3

-- DECOMPILER ERROR at PC32: Unhandled construct in 'MakeBoolean' P3

if ((hstrlog[1]).matched and (hstrlog[2]).matched) or (hstrlog[5]).matched and (hstrlog[6]).matched then
  return mp.INFECTED
end
return mp.CLEAN

