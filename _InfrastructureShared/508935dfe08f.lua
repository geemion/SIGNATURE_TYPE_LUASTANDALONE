-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/508935dfe08f 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr, "\235+")
;
(pe.mmap_patch_va)(pevars.sigaddr + 45, "��")
;
(pe.mmap_patch_va)(pevars.sigaddr + 53, "\235")
return mp.INFECTED

