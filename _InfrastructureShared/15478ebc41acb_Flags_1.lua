-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15478ebc41acb_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 30 and (hstrlog[1]).matched and (hstrlog[2]).matched and (hstrlog[3]).matched then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 27 and (hstrlog[1]).matched then
  return mp.INFECTED
end
return mp.SUSPICIOUS

