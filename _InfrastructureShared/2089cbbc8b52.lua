-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2089cbbc8b52 

-- params : ...
-- function num : 0
if (mp.readu_u32)((pe.mmap_va)((pe.get_regval)(pe.REG_ESP) + 24, 4), 1) < 262144 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + 1, "��")
return mp.INFECTED

