-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/554007037bcb 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("pea_enable_vmm_grow") then
  (mp.set_mpattribute)("pea_enable_vmm_grow")
  ;
  (pe.reemulate)()
end
return mp.CLEAN

