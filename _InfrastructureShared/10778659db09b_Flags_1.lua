-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/10778659db09b_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 10 and (hstrlog[3]).matched and (hstrlog[8]).matched then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT == 9 then
  return mp.SUSPICIOUS
end
return mp.INFECTED

