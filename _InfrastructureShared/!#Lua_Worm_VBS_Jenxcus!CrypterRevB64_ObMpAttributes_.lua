-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Worm_VBS_Jenxcus!CrypterRevB64_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 10000 then
  return mp.CLEAN
end
if l_0_0 > 500000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2, l_0_3, l_0_4 = l_0_1:find("\'(.-)%s")
if l_0_4 == nil then
  return mp.CLEAN
end
l_0_4 = l_0_4:reverse()
;
(mp.set_mpattribute)("//MpBase64DecodeLongLines")
;
(mp.vfo_add_buffer)(l_0_4, "[RevB64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

