-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b778e7d98d37 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 4 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
;
(pe.reemulate)()
return mp.LOWFI

