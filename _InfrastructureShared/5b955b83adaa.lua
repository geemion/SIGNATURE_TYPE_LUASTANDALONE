-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5b955b83adaa 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("lua_codepatch_obfuscator_xt_4")
;
(pe.mmap_patch_va)(pevars.sigaddr + 20, "��")
;
(pe.mmap_patch_va)(pevars.sigaddr + 67, "��")
;
(mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
;
(mp.set_mpattribute)("PEBMPAT:VirTool:Win32/Obfuscator.XT")
return mp.SUSPICIOUS

