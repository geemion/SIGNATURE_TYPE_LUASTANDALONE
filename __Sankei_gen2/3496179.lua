-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/__Sankei_gen2/3496179 

-- params : ...
-- function num : 0
if ((pehdr.DataDirectory)[6]).Size ~= 32 then
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
local l_0_0 = (mp.readfile)((pe.foffset_rva)(((pehdr.DataDirectory)[6]).RVA), 32)
if pehdr.AddressOfEntryPoint - (mp.readu_u32)(l_0_0, 1) ~= 0 then
  return mp.CLEAN
end
if (mp.crc32)(-1, l_0_0, 5, 24) ~= 2828841646 then
  return mp.CLEAN
end
return mp.INFECTED

