-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/11d78d7b31da4 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT < 31 then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  ;
  (pe.reemulate)()
end
if mp.HSTR_WEIGHT >= 31 then
  return mp.INFECTED
end
return mp.LOWFI

