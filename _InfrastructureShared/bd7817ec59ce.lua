-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/bd7817ec59ce 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 13 then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  ;
  (pe.reemulate)()
end
if mp.HSTR_WEIGHT == 14 then
  return mp.INFECTED
end
return mp.CLEAN

