-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2b890140654a 

-- params : ...
-- function num : 0
if (pe.get_regval)(pe.REG_EAX) == 0 then
  (pe.mmap_patch_va)(pevars.sigaddr + 3, "4\000\000\000")
end
;
(pe.mmap_patch_va)(pevars.sigaddr + (string.find)((pe.mmap_va)(pevars.sigaddr, 64), "\015\133", 1, true) - 1, "������")
return mp.INFECTED

