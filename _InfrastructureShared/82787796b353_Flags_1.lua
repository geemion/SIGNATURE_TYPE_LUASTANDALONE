-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/82787796b353_Flags_1 

-- params : ...
-- function num : 0
if (hstrlog[3]).matched and mp.HSTR_WEIGHT == 1 then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
return mp.LOWFI

