-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_TxtMzHexToBin_Includes_ConversionToB 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 8192 or l_0_0 > 4194304 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 0) == 1953651835 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(tostring(headerpage))
local l_0_2, l_0_3, l_0_4 = (string.find)(l_0_1, "4d5a9000", 1, true)
;
(mp.readprotection)(false)
local l_0_5 = (mp.readfile)(l_0_2 - 1, l_0_0 - (l_0_2 - 1))
if l_0_5 == nil then
  return mp.CLEAN
end
;
(mp.vfo_add_buffer)(fastHex2Bin(l_0_5, "([0-9A-Fa-f][0-9A-Fa-f])"), "[txtmzhextobin]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

