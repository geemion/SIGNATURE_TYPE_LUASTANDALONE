-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3a78becb742e_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 and peattributes.hasexports then
  return mp.SUSPICIOUS
end
if mp.HSTR_WEIGHT >= 2 and peattributes.hasexports then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

