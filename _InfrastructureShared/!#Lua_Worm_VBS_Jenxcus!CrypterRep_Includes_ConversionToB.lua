-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Worm_VBS_Jenxcus!CrypterRep_Includes_ConversionToB 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 15000 then
  return mp.CLEAN
end
if l_0_0 > 500000 then
  return mp.CLEAN
end
local l_0_1 = (tostring(footerpage))
local l_0_2, l_0_3 = nil, nil
local l_0_4 = {}
local l_0_5 = {}
for l_0_9 = 0, 9 do
  l_0_3 = (string.format)("[Rr][Ee][Pp][Ll][Aa][Cc][Ee]%%s-%%(%%a-,\"(.)\",\"[%d]\"", l_0_9)
  l_0_2 = (string.match)(l_0_1, l_0_3)
  if l_0_2 == nil then
    return mp.CLEAN
  end
  ;
  (table.insert)(l_0_4, l_0_2)
  l_0_5[l_0_2] = l_0_9
end
local l_0_10 = (string.format)("[%s]", (table.concat)(l_0_4, ""))
;
(mp.readprotection)(false)
local l_0_11 = (mp.readfile)(0, l_0_0)
local l_0_12 = (string.match)(l_0_11, "=%s-\"(%c-)\"")
if l_0_12 == nil then
  return mp.CLEAN
end
l_0_12 = l_0_12:gsub(l_0_10, l_0_5)
;
(mp.vfo_add_buffer)(fastDec2Bin(l_0_12, "(%d+)[^%d]?"), "[Jenxcus]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

