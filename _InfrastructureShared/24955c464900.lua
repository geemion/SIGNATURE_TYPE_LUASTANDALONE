-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/24955c464900 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("PEBMPAT:Deep_Analysis_VMM_Grow")
;
(mp.set_mpattribute)("lua_codepatch_obfuscator_tt_6")
;
(pe.mmap_patch_va)(pevars.sigaddr + 27, "��")
return mp.CLEAN

