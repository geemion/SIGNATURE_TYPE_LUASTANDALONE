-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8878f6d9085a 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 and (hstrlog[1]).matched then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 2 then
  (mp.set_mpattribute)("HSTR:TrojanDownloader:Win32/Lerspeng")
end
return mp.CLEAN

