-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2578b085e75a_Flags_1 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(0, (mp.getfilesize)() < 4096 and (mp.getfilesize)() or 4096)
if (hstrlog[1]).VA + 163 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 163 + 1) or 8192 == 3847464024 and (hstrlog[1]).VA + 189 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 189 + 1) or 8192 == 119961420 and (hstrlog[1]).VA + 303 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 303 + 1) or 8192 == 3382495594 and (hstrlog[1]).VA + 408 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 408 + 1) or 8192 == 1453503984 and (hstrlog[1]).VA + 420 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 420 + 1) or 8192 == 3761631300 and (hstrlog[1]).VA + 484 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 484 + 1) or 8192 == 3431858420 then
  return mp.INFECTED
end
return mp.CLEAN

