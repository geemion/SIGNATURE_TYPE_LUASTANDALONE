-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_JenxcusCyberCrypt_Includes_ConversionToB 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2, l_0_3, l_0_4 = (string.find)(l_0_1, "\"(.-)\"")
while (string.len)(l_0_4) < 5000 do
  l_0_2 = (string.find)(l_0_1, "\"(.-)\"", l_0_3 + 2)
end
do
  if (string.match)(l_0_4, "^%%[0-9A-Za-z][0-9A-Za-z]%%[0-9A-Za-z][0-9A-Za-z]%%[0-9A-Za-z][0-9A-Za-z]") then
    local l_0_5, l_0_6 = fastHex2Bin(l_0_4, "%%" .. "(..)")
    -- DECOMPILER ERROR at PC50: Overwrote pending register: R4 in 'AssignReg'

  end
  if (string.len)(l_0_4) < 5000 then
    return mp.CLEAN
  end
  if (string.len)(l_0_4) > 2097152 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC77: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC85: Overwrote pending register: R4 in 'AssignReg'

  if not (mp.get_mpattribute)("SCPT:ReverseBase64") or l_0_4:match("^==") then
    (mp.set_mpattribute)("//MpBase64DecodeLongLines")
    ;
    (mp.vfo_add_buffer)(l_0_4, "[Jenxcus]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    return mp.CLEAN
  end
end

