-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/__Sankei_gen1/3496883 

-- params : ...
-- function num : 0
if ((pehdr.DataDirectory)[6]).Size ~= 34 then
  return mp.CLEAN
end
if epcode[1] ~= 232 then
  return mp.CLEAN
end
if peattributes.epscn_writable == false then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(((pehdr.DataDirectory)[6]).RVA), 34)
if pehdr.AddressOfEntryPoint - (mp.readu_u32)(l_0_0, 1) ~= 0 then
  return mp.CLEAN
end
if (mp.crc32)(-1, l_0_0, 5, 26) ~= 2066038322 then
  return mp.CLEAN
end
return mp.INFECTED

