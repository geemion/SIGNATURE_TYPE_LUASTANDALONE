-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/14778b52a2229 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 21 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:TrojanDownloader:Win32/Krado.A")
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
return mp.CLEAN

