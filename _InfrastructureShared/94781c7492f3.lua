-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/94781c7492f3 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 8 then
  return mp.INFECTED
else
  if mp.HSTR_WEIGHT >= 6 then
    (mp.set_mpattribute)("do_exhaustivehstr_rescan")
    ;
    (pe.reemulate)()
  end
end
return mp.LOWFI

