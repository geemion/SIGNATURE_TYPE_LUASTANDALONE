-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_VirTool_Win32_VMProtect.A 

-- params : ...
-- function num : 0
if pevars.epsec < 4 or pehdr.NumberOfSections < pevars.epsec or (pesecs[pevars.epsec]).NameDW ~= (pesecs[pevars.epsec - 1]).NameDW or (pesecs[pevars.epsec - 1]).SizeOfRawData ~= 0 or (pesecs[pevars.epsec - 1]).PointerToRawData ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

