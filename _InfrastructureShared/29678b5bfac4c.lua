-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/29678b5bfac4c 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 21 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT == 10 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan_vbinject_fa")
return mp.CLEAN

