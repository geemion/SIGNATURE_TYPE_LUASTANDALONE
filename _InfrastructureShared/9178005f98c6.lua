-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9178005f98c6 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
-- DECOMPILER ERROR at PC36: Unhandled construct in 'MakeBoolean' P3

-- DECOMPILER ERROR at PC36: Unhandled construct in 'MakeBoolean' P3

if ((hstrlog[1]).matched and (hstrlog[2]).matched) or not (hstrlog[1]).matched or (hstrlog[3]).matched == true then
  return mp.SUSPICIOUS
end
return mp.CLEAN

