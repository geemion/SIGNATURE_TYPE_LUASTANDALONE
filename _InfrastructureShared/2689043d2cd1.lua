-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2689043d2cd1 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 6, "��")
;
(pe.mmap_patch_va)(pevars.sigaddr + 12, "��")
;
(pe.mmap_patch_va)(pevars.sigaddr + 18, "\235")
;
(mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED

