-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/__Viking_remnants/12565880 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable ~= true then
  return mp.CLEAN
end
if peattributes.epscn_islast ~= false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 11822 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[pehdr.NumberOfSections]).PointerToRawData, 384)
if (mp.crc32)(-1, l_0_0, 1, 384) ~= 4178240745 then
  return mp.CLEAN
end
return mp.INFECTED

