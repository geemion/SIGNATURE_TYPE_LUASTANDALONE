-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/fe78695bfe91_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 41 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT == 40 then
  (mp.set_mpattribute)("MpPreemptiveMultiTasking")
  ;
  (pe.reemulate)()
end
if mp.HSTR_WEIGHT >= 30 then
  return mp.LOWFI
end
return mp.CLEAN

