-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2b780d8ecea9 

-- params : ...
-- function num : 0
if pehdr.CheckSum == 0 and peattributes.isexe and peattributes.hasexports and pevars.epsec < 3 and pehdr.MajorLinkerVersion == 10 and pehdr.MinorLinkerVersion == 0 and pehdr.NumberOfSections == 7 then
  if mp.HSTR_WEIGHT == 1 then
    (mp.set_mpattribute)("do_exhaustivehstr_rescan")
    ;
    (pe.reemulate)()
  end
  if mp.HSTR_WEIGHT == 2 then
    return mp.INFECTED
  end
end
return mp.CLEAN

