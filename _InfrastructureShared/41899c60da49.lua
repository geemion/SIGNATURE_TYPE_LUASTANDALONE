-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41899c60da49 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 3, 4)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
;
(pe.mmap_patch_va)(l_0_1, "\221\a")
return mp.INFECTED

