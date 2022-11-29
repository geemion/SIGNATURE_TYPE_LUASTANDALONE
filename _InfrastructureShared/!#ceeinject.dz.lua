-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ceeinject.dz 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if mp.HEADERPAGE_SZ < 4096 or l_0_0 < 4096 or l_0_0 > 16777216 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 1) == 23117 then
  return mp.CLEAN
end
local l_0_1 = (mp.readu_u32)(headerpage, 41)
local l_0_2 = (mp.readu_u32)(headerpage, 45)
local l_0_3 = (mp.readu_u32)(headerpage, 49)
local l_0_4 = (mp.readu_u32)(headerpage, 53)
local l_0_5 = (mp.readu_u32)(headerpage, 57)
if l_0_1 == 0 then
  return mp.CLEAN
end
if (mp.bitand)((mp.bitxor)((mp.readu_u32)(headerpage, 1), l_0_1), 65535) ~= 23117 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_6 = (mp.readfile)(0, 4096)
for l_0_10 = 1, 3840, 20 do
  (mp.writeu_u32)(l_0_6, l_0_10, (mp.bitxor)((mp.readu_u32)(l_0_6, l_0_10), l_0_1))
  ;
  (mp.writeu_u32)(l_0_6, l_0_10 + 4, (mp.bitxor)((mp.readu_u32)(l_0_6, l_0_10 + 4), l_0_2))
  ;
  (mp.writeu_u32)(l_0_6, l_0_10 + 8, (mp.bitxor)((mp.readu_u32)(l_0_6, l_0_10 + 8), l_0_3))
  ;
  (mp.writeu_u32)(l_0_6, l_0_10 + 12, (mp.bitxor)((mp.readu_u32)(l_0_6, l_0_10 + 12), l_0_4))
  ;
  (mp.writeu_u32)(l_0_6, l_0_10 + 16, (mp.bitxor)((mp.readu_u32)(l_0_6, l_0_10 + 16), l_0_5))
end
local l_0_11 = (mp.readu_u32)(l_0_6, 61) + 1
if l_0_11 > 4096 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_6, l_0_11) ~= 17744 then
  return mp.CLEAN
end
local l_0_12 = (mp.readu_u32)(l_0_6, l_0_11 + 28)
if l_0_12 ~= 2560 then
  return mp.CLEAN
end
local l_0_13 = (mp.readu_u32)(l_0_6, l_0_11 + 84)
if l_0_13 ~= 1024 then
  return mp.CLEAN
end
if (mp.crc32)(-1, l_0_6, l_0_13 + 1, 32) ~= 3735068208 then
  return mp.CLEAN
end
;
(mp.vfo_add_buffer)(l_0_6, "[CeeInject.gen!DZ]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

