-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ac78cf92b88d 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 101 then
  return mp.INFECTED
else
  if mp.HSTR_WEIGHT >= 1 then
    (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  end
end
return mp.LOWFI

