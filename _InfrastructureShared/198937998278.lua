-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/198937998278 

-- params : ...
-- function num : 0
if pevars.sigaddr == pehdr.ImageBase + pehdr.AddressOfEntryPoint then
  (pe.set_peattribute)("disable_apicall_limit", true)
  return mp.INFECTED
end
return mp.CLEAN

