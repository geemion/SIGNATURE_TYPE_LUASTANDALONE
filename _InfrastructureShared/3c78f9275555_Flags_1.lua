-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3c78f9275555_Flags_1 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(0, (mp.getfilesize)() < 4096 and (mp.getfilesize)() or 4096)
if (hstrlog[1]).VA + 515 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 515 + 1) or 8192 == 117450240 and (hstrlog[1]).VA + 549 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 549 + 1) or 8192 == 27392 and (hstrlog[1]).VA + 605 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 605 + 1) or 8192 == 3758153472 and (hstrlog[1]).VA + 647 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 647 + 1) or 8192 == 1728067328 and (hstrlog[1]).VA + 675 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 675 + 1) or 8192 == 4278204416 and (hstrlog[1]).VA + 709 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 709 + 1) or 8192 == 3774888704 and (hstrlog[1]).VA + 737 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 737 + 1) or 8192 == 1627409664 and (hstrlog[1]).VA + 819 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 819 + 1) or 8192 == 1593886720 and (hstrlog[1]).VA + 883 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 883 + 1) or 8192 == 3842003712 and (hstrlog[1]).VA + 935 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 935 + 1) or 8192 == 1593886720 and (hstrlog[1]).VA + 991 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 991 + 1) or 8192 == 1627409664 then
  return mp.INFECTED
end
return mp.CLEAN

