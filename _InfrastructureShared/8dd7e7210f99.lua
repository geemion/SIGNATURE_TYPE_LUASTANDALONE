-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8dd7e7210f99 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2, l_0_3 = nil, nil, nil, nil
local l_0_4 = nil
local l_0_5 = nil
local l_0_6 = nil
local l_0_7 = nil
local l_0_8 = true
local l_0_9 = false
if (mp.GetScannedPPID)() == nil then
  return mp.CLEAN
end
local l_0_10 = false
if (((not (string.find)((string.lower)((mp.GetProcessCommandLine)((mp.GetScannedPPID)())), " /all", 1, true) or (string.find)((string.lower)((mp.GetProcessCommandLine)((mp.GetScannedPPID)())), " /oldest", 1, true)) and not (string.find)((string.lower)((mp.GetProcessCommandLine)((mp.GetScannedPPID)())), " /shadow=", 1, true)) or l_0_9 ~= true) and (l_0_10 or true) then
  return mp.CLEAN
end
do
  local l_0_11 = nil
  while 1 do
    -- DECOMPILER ERROR at PC62: Confused about usage of register: R11 in 'UnsetPending'

    -- DECOMPILER ERROR at PC76: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC77: Overwrote pending register: R4 in 'AssignReg'

    if 0 <= 5 and (0 ~= 0 or l_0_8 == true) then
      if l_0_4 == nil then
        break
      end
    end
    if l_0_5 == nil then
      break
    end
    if l_0_6 == nil then
      break
    end
    -- DECOMPILER ERROR at PC95: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC105: Confused about usage of register: R10 in 'UnsetPending'

    do
      if (mp.GetProcessCommandLine)(l_0_5) ~= nil then
        local l_0_12 = false
        if (string.match)((string.lower)((mp.GetProcessCommandLine)(l_0_5)), "[a-zA-Z] (.+)$") ~= nil and ((string.find)((string.match)((string.lower)((mp.GetProcessCommandLine)(l_0_5)), "[a-zA-Z] (.+)$"), ":\\windows", 1, true) or (string.find)((string.match)((string.lower)((mp.GetProcessCommandLine)(l_0_5)), "[a-zA-Z] (.+)$"), ":\\program files", 1, true)) then
          return mp.CLEAN
        end
      end
      l_0_7 = (string.match)(l_0_6, "\\([^\\]+)$")
      if l_0_7 ~= nil then
        if l_0_7 == "" then
          break
        end
      end
      if (string.find)(l_0_6, ":\\windows\\", 2, true) == nil and (string.find)(l_0_6, ":\\program files", 2, true) == nil then
        break
      end
      -- DECOMPILER ERROR at PC167: Confused about usage of register: R11 in 'UnsetPending'

      -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
  if true == false then
    return mp.CLEAN
  end
  do return mp.INFECTED end
  -- WARNING: undefined locals caused missing assignments!
end

