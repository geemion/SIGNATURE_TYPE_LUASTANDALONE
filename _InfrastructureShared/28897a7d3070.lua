-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/28897a7d3070 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("RDTSC_LoD_trick")
;
(pe.mmap_patch_va)(pevars.sigaddr + 42, "��")
return mp.INFECTED

