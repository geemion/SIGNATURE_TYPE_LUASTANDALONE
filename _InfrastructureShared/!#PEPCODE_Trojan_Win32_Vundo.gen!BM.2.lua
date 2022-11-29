-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#PEPCODE_Trojan_Win32_Vundo.gen!BM.2 

-- params : ...
-- function num : 0
if peattributes.hasexports == true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 6 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 1685021486 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if epcode[1] ~= 144 then
  return mp.CLEAN
end
if epcode[2] <= 224 then
  return mp.CLEAN
end
if epcode[5] ~= 255 then
  return mp.CLEAN
end
if epcode[6] ~= 255 then
  return mp.CLEAN
end
if (pesecs[1]).PointerToRawData ~= 1024 then
  return mp.CLEAN
end
return mp.INFECTED

