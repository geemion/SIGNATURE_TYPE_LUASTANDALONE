-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/747849bd11c6 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 192512 and (mp.getfilesize)() > 122880 then
  if mp.HSTR_WEIGHT == 3 then
    (mp.set_mpattribute)("Dipsind.C_persist")
    return mp.LOWFI
  end
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  ;
  (pe.reemulate)()
end
return mp.CLEAN

