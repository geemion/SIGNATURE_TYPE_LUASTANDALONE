-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/39958a53bf8c 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:PEHasIOAVURL") and (mp.get_mpattribute)("SIGATTR:SellExecuteExError") then
  (mp.set_mpattribute)("lua_codepatch_tibs_1")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 9, "\235")
end
return mp.INFECTED

