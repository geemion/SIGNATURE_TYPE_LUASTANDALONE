-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#PEPCODE_Trojan_Win32_Vundo.IB 

-- params : ...
-- function num : 0
if peattributes.no_relocs ~= false then
  return mp.CLEAN
end
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.hasexports == true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW == 1920168494 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size == 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).Size < 8 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(((pehdr.DataDirectory)[6]).RVA), 16)
if (mp.readu_u32)(l_0_0, 1) ~= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 9) ~= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 13) ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

