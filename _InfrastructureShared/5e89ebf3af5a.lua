-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5e89ebf3af5a 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("lua_codepatch_tibs_23")
local l_0_0 = (pe.mmap_va)((pe.get_regval)(pe.REG_EBP) - 4, 4)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
l_0_0 = (pe.mmap_va)(pevars.sigaddr, 52)
local l_0_2 = (mp.readu_u32)(l_0_0, 6)
local l_0_3 = (string.byte)(l_0_0, 15)
local l_0_4 = (string.byte)(l_0_0, 18)
local l_0_5 = (string.byte)(l_0_0, 21)
local l_0_6 = (mp.readu_u32)(l_0_0, 23)
local l_0_7 = (string.byte)(l_0_0, 29)
local l_0_8 = (mp.readu_u32)(l_0_0, 33)
local l_0_9 = (mp.readu_u32)(l_0_0, 44)
local l_0_10 = (pe.get_regval)(pe.REG_EDX)
local l_0_11 = (mp.ror32)((mp.ror32)((mp.ror32)(l_0_10 + 1, l_0_3) - l_0_4, l_0_5) + l_0_6, l_0_7) - (mp.bitxor)(l_0_9, l_0_8) + l_0_1 - l_0_2
;
(pe.set_regval)(pe.REG_EBX, l_0_11)
return mp.INFECTED

