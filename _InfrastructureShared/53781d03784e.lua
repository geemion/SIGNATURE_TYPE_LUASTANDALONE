-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/53781d03784e 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpHasExpensiveLoop") and peattributes.dynmem_reads_vdll_code and peattributes.checks_teb_lasterror then
  return mp.SUSPICIOUS
end
return mp.CLEAN

