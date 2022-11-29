-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#PEPCODE_VirTool_Win32_Obfuscator.FF 

-- params : ...
-- function num : 0
if pehdr.AddressOfEntryPoint ~= 0 then
  return mp.CLEAN
end
if pehdr.SizeOfCode ~= 0 then
  return mp.CLEAN
end
if epcode[1] ~= 77 then
  return mp.CLEAN
end
if epcode[2] ~= 90 then
  return mp.CLEAN
end
if epcode[4] ~= 235 then
  return mp.CLEAN
end
if epcode[5] ~= 1 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData ~= 0 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).PointerToRawData ~= 0 then
  return mp.CLEAN
end
if (pesecs[1]).Characteristics ~= 3758096480 then
  return mp.CLEAN
end
return mp.INFECTED

