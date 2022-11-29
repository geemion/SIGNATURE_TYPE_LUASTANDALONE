-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_PEAnomaly_SuspiciousEPSection 

-- params : ...
-- function num : 0
if pevars.epsec == 4294967296 or pevars.epsec == -1 then
  (mp.set_mpattribute)("LUA:PEAnomaly_InvalidEPSection")
  return mp.CLEAN
end
if epcode[1] == 0 or epcode[1] == 204 or epcode[1] == 195 then
  (mp.set_mpattribute)("LUA:PEAnomaly_UnusualEPCode")
end
local l_0_0 = tostring((pesecs[pevars.epsec]).Name)
if l_0_0 == ".rsrc" or l_0_0 == ".rdata" or l_0_0 == ".data" or l_0_0 == ".pdata" or l_0_0 == ".reloc" then
  return mp.INFECTED
end
return mp.CLEAN

