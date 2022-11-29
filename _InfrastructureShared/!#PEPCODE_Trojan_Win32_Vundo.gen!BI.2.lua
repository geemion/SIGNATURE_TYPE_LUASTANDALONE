-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#PEPCODE_Trojan_Win32_Vundo.gen!BI.2 

-- params : ...
-- function num : 0
if peattributes.hasexports == true then
  return mp.CLEAN
end
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if peattributes.epscn_islast ~= true then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 0 then
  return mp.CLEAN
end
if epcode[1] ~= 80 then
  return mp.CLEAN
end
if epcode[2] ~= 104 then
  return mp.CLEAN
end
if epcode[7] <= 231 then
  return mp.CLEAN
end
if (pesecs[1]).PointerToRawData ~= 1024 then
  return mp.CLEAN
end
return mp.INFECTED

