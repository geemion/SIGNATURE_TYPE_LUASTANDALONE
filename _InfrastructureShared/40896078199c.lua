-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/40896078199c 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("lua_codepatch_tibs_7")
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 32)
local l_0_1 = (mp.readu_u32)(l_0_0, 12)
local l_0_2 = (mp.readu_u32)(l_0_0, 23)
local l_0_3 = (pe.get_regval)(pe.REG_EDX)
local l_0_4 = (string.byte)(l_0_0, 8)
local l_0_5 = (mp.ror32)(l_0_3, l_0_4) - (mp.bitxor)(l_0_2, l_0_1) - 1
;
(pe.set_regval)(pe.REG_EBX, l_0_5)
return mp.INFECTED

