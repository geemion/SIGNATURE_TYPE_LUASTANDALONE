-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ce78c932cb1b_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 5 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("do_deep_rescan")
return mp.SUSPICIOUS

