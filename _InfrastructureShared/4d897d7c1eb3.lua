-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4d897d7c1eb3 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 9, 1)
;
(pe.set_regval)(pe.REG_EAX, (string.byte)(l_0_0, 1))
;
(pe.mmap_patch_va)(pevars.sigaddr + 13, "��")
return mp.INFECTED

