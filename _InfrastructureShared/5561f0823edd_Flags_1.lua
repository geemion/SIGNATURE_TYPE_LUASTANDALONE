-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5561f0823edd_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 13 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 6 then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

