-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/27678c0019434 

-- params : ...
-- function num : 0
if ((hstrlog[1]).matched or (hstrlog[2]).matched) and mp.HSTR_WEIGHT > 1 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:Trojan:Win32/Sefnit!ths")
return mp.CLEAN

