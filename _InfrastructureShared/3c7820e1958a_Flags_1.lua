-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3c7820e1958a_Flags_1 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(0, (mp.getfilesize)() < 4096 and (mp.getfilesize)() or 4096)
if (hstrlog[1]).VA + 329 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 329 + 1) or 8192 == 3842003712 and (hstrlog[1]).VA + 381 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 381 + 1) or 8192 == 117450240 and (hstrlog[1]).VA + 609 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 609 + 1) or 8192 == 3372260352 and (hstrlog[1]).VA + 819 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 819 + 1) or 8192 == 1442882048 and (hstrlog[1]).VA + 843 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 843 + 1) or 8192 == 3758109952 and (hstrlog[1]).VA + 971 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 971 + 1) or 8192 == 3422588416 then
  return mp.INFECTED
end
return mp.CLEAN

