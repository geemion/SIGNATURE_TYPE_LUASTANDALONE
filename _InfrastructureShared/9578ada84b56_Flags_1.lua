-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9578ada84b56_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
else
  if mp.HSTR_WEIGHT >= 2 then
    (mp.set_mpattribute)("do_exhaustivehstr_rescan")
    return mp.LOWFI
  end
end
return mp.CLEAN

