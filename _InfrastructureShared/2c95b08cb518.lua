-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2c95b08cb518 

-- params : ...
-- function num : 0
if (pe.isvdllimage)((pe.get_regval)(pe.REG_ECX)) == false then
  return mp.CLEAN
end
if (pe.isvdllbase)((pe.get_regval)(pe.REG_EBX)) == false then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + 1, "\255\255\255\255")
;
(mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED

