-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Worm_VBS_Jenxcus!CrypterRev_Includes_ConversionToB 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 9000 then
  return mp.CLEAN
end
if l_0_0 > 300000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2, l_0_3, l_0_4 = l_0_1:find("\'(%x-)%s")
l_0_4 = l_0_4:reverse()
;
(mp.vfo_add_buffer)(fastHex2Bin(l_0_4, "(..)"), "[JenxcusRev]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

