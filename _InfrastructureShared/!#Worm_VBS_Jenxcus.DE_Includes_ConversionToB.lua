-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Worm_VBS_Jenxcus.DE_Includes_ConversionToB 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
if l_0_1 == nil then
  return mp.CLEAN
end
if #l_0_1 < 5000 then
  return mp.CLEAN
end
local l_0_2, l_0_3 = (mp.UfsGetMetadataStringA)("dkey", true)
local l_0_4, l_0_5 = l_0_1:sub(1, #l_0_1 - 44)
do
  local l_0_7 = nil
  if (mp.crc32)(-1, (function(l_1_0, l_1_1)
  -- function num : 0_0 , upvalues : l_0_5
  local l_1_2 = table.insert
  local l_1_3 = table.concat
  local l_1_4 = {}
  for l_1_8 in l_1_1:gmatch("(.)") do
    l_1_2(l_1_4, l_1_8:byte())
  end
  l_1_4[#l_1_4 + 1] = 0
  local l_1_9 = {}
  for l_1_13 in (string.gmatch)(l_1_0, "(.)") do
    l_1_2(l_1_9, l_1_13:byte())
    if #l_1_9 > 3900 then
      break
    end
  end
  do
    local l_1_14 = 2
    local l_1_15, l_1_16, l_1_17 = nil, nil, nil
    l_1_17 = {}
    for l_1_21 = 1, 1500 do
      l_1_16 = l_1_9[l_1_21] - l_1_4[l_1_14]
      if l_1_16 < 0 then
        l_1_16 = l_1_16 + 256
      end
      l_1_2(l_1_17, l_1_16)
      l_1_14 = l_1_14 + 1
      if #l_1_4 < l_1_14 then
        l_1_14 = 1
      end
    end
    l_1_0 = (fastDec2Bin(l_1_3(l_1_17, ",") .. ",", "(%d-),")):sub(1, l_1_15)
    return l_1_0
  end
end
)(l_0_4, l_0_3), 1, 1500) == 3787559893 then
    return mp.INFECTED
  end
  ;
  (mp.vfo_add_buffer)((function(l_1_0, l_1_1)
  -- function num : 0_0 , upvalues : l_0_5
  local l_1_2 = table.insert
  local l_1_3 = table.concat
  local l_1_4 = {}
  for l_1_8 in l_1_1:gmatch("(.)") do
    l_1_2(l_1_4, l_1_8:byte())
  end
  l_1_4[#l_1_4 + 1] = 0
  local l_1_9 = {}
  for l_1_13 in (string.gmatch)(l_1_0, "(.)") do
    l_1_2(l_1_9, l_1_13:byte())
    if #l_1_9 > 3900 then
      break
    end
  end
  do
    local l_1_14 = 2
    local l_1_15, l_1_16, l_1_17 = nil, nil, nil
    l_1_17 = {}
    for l_1_21 = 1, 1500 do
      l_1_16 = l_1_9[l_1_21] - l_1_4[l_1_14]
      if l_1_16 < 0 then
        l_1_16 = l_1_16 + 256
      end
      l_1_2(l_1_17, l_1_16)
      l_1_14 = l_1_14 + 1
      if #l_1_4 < l_1_14 then
        l_1_14 = 1
      end
    end
    l_1_0 = (fastDec2Bin(l_1_3(l_1_17, ",") .. ",", "(%d-),")):sub(1, l_1_15)
    return l_1_0
  end
end
)(l_0_4, l_0_3), "[JenxcusToStrV3]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  do return mp.CLEAN end
  -- DECOMPILER ERROR at PC61: freeLocal<0 in 'ReleaseLocals'

end

