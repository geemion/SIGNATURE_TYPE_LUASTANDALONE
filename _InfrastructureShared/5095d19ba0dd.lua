-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5095d19ba0dd 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr, "ÇE\240\001\000\000\000")
;
(pe.mmap_patch_va)(pevars.sigaddr + 7, "\144")
;
(pe.mmap_patch_va)(pevars.sigaddr + 17, "")
;
(pe.mmap_patch_va)(pevars.sigaddr + 27, "")
return mp.INFECTED

