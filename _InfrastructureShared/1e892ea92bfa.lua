-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1e892ea92bfa 

-- params : ...
-- function num : 0
if (pe.mmap_va)(pevars.sigaddr + 12, 1) == "\000" or (pe.mmap_va)(pevars.sigaddr + 12, 1) == "\001" or (pe.mmap_va)(pevars.sigaddr + 12, 1) == "\016" or (pe.mmap_va)(pevars.sigaddr + 12, 1) == "@" then
  (pe.mmap_patch_va)(pevars.sigaddr + 7, "��")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 13, "\235")
  ;
  (mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
  return mp.INFECTED
end
return mp.CLEAN

