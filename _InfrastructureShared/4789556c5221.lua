-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4789556c5221 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("lua_codepatch_tibs_10")
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 40)
local l_0_1 = (mp.readu_u32)(l_0_0, 3)
local l_0_2 = (mp.readu_u32)(l_0_0, 9)
local l_0_3 = (mp.readu_u32)(l_0_0, 21)
local l_0_4 = (mp.readu_u32)(l_0_0, 32)
local l_0_5 = (pe.get_regval)(pe.REG_EDX)
local l_0_6 = (string.byte)(l_0_0, 17)
local l_0_7 = (mp.ror32)(l_0_5, l_0_6) - (mp.bitxor)(l_0_4, l_0_3) - l_0_2 + l_0_1
;
(pe.set_regval)(pe.REG_EBX, l_0_7)
return mp.INFECTED

