-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/79b3804eb56d_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2, l_0_3, l_0_4 = , (string.find)(l_0_0, "%.downloadstring%(%\'?\"?https?%://(%d+%.%d+%.%d+%.%d+)%:%d+/%w+")
  if not "%.downloadstring%(%\'?\"?https?%://(%d+%.%d+%.%d+%.%d+)%:%d+/%w+" then
    return mp.CLEAN
  end
  if not isPublicIP(R5_PC29) then
    return mp.CLEAN
  end
  if not isIEXfound(R5_PC29) then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC45: Overwrote pending register: R5 in 'AssignReg'

  local l_0_5, l_0_6, l_0_7 = , (string.find)(R5_PC29, "%.downloadstring%(%\'?\"?(https?%://%d+%.%d+%.%d+%.%d+%:%d+)/%w+"), R5_PC29
  local l_0_8 = nil
  if not l_0_8 then
    return mp.CLEAN
  end
  ;
  (table.insert)({}, l_0_8)
  local l_0_9 = nil
  local l_0_10 = nil
  if SafeGetUrlReputation(l_0_9, {SIG_CONTEXT = "PSHELL", CONTENT_SOURCE = "POWERSHELL", PROCESS_CONTEXT = "POWERSHELL.EXE", PARENT_CONTEXT = nil, FILELESS = "true", CMDLINE_URL = "true", BREAK_AT_FIRST_HIT_MALWARE = "40"}) == -1 then
    return mp.CLEAN
  else
    if SafeGetUrlReputation(l_0_9, {SIG_CONTEXT = "PSHELL", CONTENT_SOURCE = "POWERSHELL", PROCESS_CONTEXT = "POWERSHELL.EXE", PARENT_CONTEXT = nil, FILELESS = "true", CMDLINE_URL = "true", BREAK_AT_FIRST_HIT_MALWARE = "40"}) ~= nil then
      local l_0_11 = nil
      for l_0_15,l_0_16 in ipairs((SafeGetUrlReputation(l_0_9, {SIG_CONTEXT = "PSHELL", CONTENT_SOURCE = "POWERSHELL", PROCESS_CONTEXT = "POWERSHELL.EXE", PARENT_CONTEXT = nil, FILELESS = "true", CMDLINE_URL = "true", BREAK_AT_FIRST_HIT_MALWARE = "40"})).urls) do
        local l_0_12 = nil
        -- DECOMPILER ERROR at PC84: Confused about usage of register: R15 in 'UnsetPending'

        if R15_PC84.determination == 2 and R15_PC84.confidence >= 60 then
          return mp.INFECTED
        end
      end
    end
  end
  do
    return mp.CLEAN
  end
end

