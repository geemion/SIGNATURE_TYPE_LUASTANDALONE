-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1c0978f0cb56f4 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:Trojan:Win32/Lznt_Xor8_Win32")
return mp.LOWFI

