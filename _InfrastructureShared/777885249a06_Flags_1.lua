-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/777885249a06_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 11 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 8 and (mp.get_mpattribute)("SIGATTR:DelphiFile") then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
  return mp.SUSPICIOUS
end
return mp.CLEAN

