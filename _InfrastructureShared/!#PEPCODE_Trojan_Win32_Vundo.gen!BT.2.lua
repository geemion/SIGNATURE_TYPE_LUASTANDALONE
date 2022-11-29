-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#PEPCODE_Trojan_Win32_Vundo.gen!BT.2 

-- params : ...
-- function num : 0
if peattributes.hasexports == true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 6 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 1094992942 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if epcode[1] ~= 72 then
  return mp.CLEAN
end
if epcode[2] ~= 72 then
  return mp.CLEAN
end
if epcode[3] ~= 235 then
  return mp.CLEAN
end
if (pesecs[1]).PointerToRawData ~= 1024 then
  return mp.CLEAN
end
return mp.INFECTED

