-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e678b9abd89b_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 11 then
  if (hstrlog[2]).matched then
    (mp.changedetectionname)(805306452)
  else
    if (hstrlog[3]).matched then
      (mp.changedetectionname)(805306453)
    end
  end
  return mp.INFECTED
else
  if mp.HSTR_WEIGHT == 10 and (hstrlog[4]).matched and (hstrlog[5]).matched then
    (mp.set_mpattribute)("HSTR:PossibleGamarue")
  end
end
return mp.CLEAN

