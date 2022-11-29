-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#PEPCODE_VMMGROW_FOR_WINTRIM_BX 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.hasexports ~= false then
  return mp.CLEAN
end
if peattributes.no_relocs ~= true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[11]).RVA ~= 0 then
  return mp.CLEAN
end
if peattributes.hasstandardentry ~= false then
  return mp.CLEAN
end
if peattributes.is_delphi ~= false then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if epcode[1] ~= 129 then
  return mp.CLEAN
end
if epcode[2] ~= 236 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 5) ~= 0 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 3) < 768 then
  return mp.CLEAN
end
if pehdr.SizeOfImage < 512000 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if pehdr.SizeOfImage - (pesecs[pevars.epsec]).VirtualSize >= 126976 then
  return mp.CLEAN
end
return mp.INFECTED

