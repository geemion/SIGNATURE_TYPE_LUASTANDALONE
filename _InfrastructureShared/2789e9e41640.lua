-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2789e9e41640 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 7, "\235")
;
(pe.mmap_patch_va)(pevars.sigaddr + 12, "\002")
return mp.INFECTED

