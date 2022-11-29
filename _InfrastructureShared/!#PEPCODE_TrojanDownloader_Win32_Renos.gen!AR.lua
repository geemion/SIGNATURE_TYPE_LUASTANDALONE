-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#PEPCODE_TrojanDownloader_Win32_Renos.gen!AR 

-- params : ...
-- function num : 0
if peattributes.no_relocs ~= true then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.headerchecksum0 ~= true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[1]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size <= 0 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 1920168494 then
  return mp.CLEAN
end
return mp.INFECTED

