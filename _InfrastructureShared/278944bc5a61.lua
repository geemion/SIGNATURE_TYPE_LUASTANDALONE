-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/278944bc5a61 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:PEHasIOAVURL") and (mp.get_mpattribute)("SIGATTR:SellExecuteExError") then
  (mp.set_mpattribute)("lua_codepatch_tibs_3")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 7, "��")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 14, "\178\000����")
end
return mp.INFECTED

