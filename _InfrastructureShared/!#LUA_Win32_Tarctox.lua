-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_Win32_Tarctox 

-- params : ...
-- function num : 0
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if (mp.getfilesize)() < 49152 or (mp.getfilesize)() > 1507328 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 4 and pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if (string.lower)((pesecs[1]).Name) ~= ".text" or (string.lower)((pesecs[2]).Name) ~= ".data" or (string.lower)((pesecs[3]).Name) ~= ".sxdata" or (string.lower)((pesecs[pehdr.NumberOfSections]).Name) ~= ".idata" then
  return mp.CLEAN
end
if (pesecs[1]).VirtualSize < 65536 or (pesecs[1]).VirtualSize > 131072 then
  return mp.CLEAN
end
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 ~= nil then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
return mp.INFECTED

