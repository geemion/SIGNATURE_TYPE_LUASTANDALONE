-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2478477ab79b 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("pea_enable_vmm_grow") then
  (pe.set_peattribute)("enable_vmm_grow", true)
  ;
  (pe.reemulate)()
else
  return mp.INFECTED
end
return mp.CLEAN

