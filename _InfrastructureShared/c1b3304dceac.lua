-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c1b3304dceac 

-- params : ...
-- function num : 0
random = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = 214013 * l_1_0 + 2531011
  local l_1_2 = (mp.bitand)((mp.shr32)(l_1_1, 16), 32767)
  return l_1_2, l_1_1
end

guid = function(l_2_0)
  -- function num : 0_1
  local l_2_1, l_2_2, l_2_3, l_2_4, l_2_5, l_2_6, l_2_7, l_2_8 = nil, nil, nil, nil, nil, nil, nil, nil
  local l_2_9 = nil
  -- DECOMPILER ERROR at PC14: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC19: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC34: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC41: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC46: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC51: Overwrote pending register: R9 in 'AssignReg'

  local l_2_10 = random(R9_PC7)
  local l_2_11 = random(R9_PC7)
  local l_2_12 = (mp.bitor)((mp.bitand)(random(R9_PC7), 4095), 16384)
  local l_2_13 = random(R9_PC7) % 16383 + 32768
  local l_2_14 = random(R9_PC7)
  local l_2_15 = random(R9_PC7)
  local l_2_16 = random(R9_PC7)
  local l_2_17 = R9_PC7
  local l_2_18 = string.format
  local l_2_19 = "{%0.4X%0.4X-%0.4X-%0.4X-%0.4X-%0.4X%0.4X%0.4X}"
  do return l_2_18(l_2_19, l_2_9, l_2_10, l_2_11, l_2_12, l_2_13, l_2_14, l_2_15, l_2_16) end
  -- DECOMPILER ERROR at PC66: Confused about usage of register R11 for local variables in 'ReleaseLocals'

end

local l_0_0 = (mp.ContextualExpandEnvironmentVariables)("%temp%")
local l_0_1 = (sysio.GetFileFsVolumeInformation)(l_0_0)
local l_0_2 = l_0_1.VolumeSerialNumber
local l_0_3 = guid(l_0_2)
local l_0_4 = (this_sigattrlog[2]).wp1
if (this_sigattrlog[3]).matched then
  l_0_4 = (this_sigattrlog[3]).wp1
end
l_0_4 = (mp.utf16to8)(l_0_4)
if (string.find)((string.lower)(l_0_4), (string.lower)(l_0_3), 1, true) == nil then
  return mp.CLEAN
end
local l_0_5 = (this_sigattrlog[1]).utf8p1
local l_0_6 = (string.lower)((this_sigattrlog[1]).utf8p2)
local l_0_7 = (mp.GetExecutablesFromCommandLine)(l_0_6)
if #l_0_7 == 1 then
  (mp.ReportLowfi)(l_0_5, 1553292636)
  return mp.INFECTED
end
for l_0_11 = 2, #l_0_7 do
  if (sysio.IsFileExists)(l_0_7[l_0_11]) then
    if (string.match)(l_0_7[l_0_11], "\\(Application Data|ProgramData)\\[0-9a-z]+\\[.0-9a-z]+$") ~= nil then
      (mp.ReportLowfi)(l_0_7[l_0_11], 954960809)
    else
      ;
      (mp.ReportLowfi)(l_0_7[l_0_11], 3621865083)
    end
  end
end
return mp.INFECTED

