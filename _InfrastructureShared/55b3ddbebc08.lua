-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b3ddbebc08 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  local l_0_1 = nil
  -- DECOMPILER ERROR at PC26: Overwrote pending register: R1 in 'AssignReg'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p1 == nil or nil == nil then
    return mp.CLEAN
  end
  local l_0_2 = nil
  if (mp.ContextualExpandEnvironmentVariables)("%temp%") == nil or (mp.ContextualExpandEnvironmentVariables)("%temp%") == "" then
    return mp.CLEAN
  end
  if (string.find)((string.lower)(l_0_2), (string.lower)((mp.ContextualExpandEnvironmentVariables)("%temp%"))) == nil then
    return mp.CLEAN
  end
  if l_0_1 ~= nil then
    local l_0_3 = nil
    for l_0_7,l_0_8 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_1)) do
      local l_0_4 = nil
      -- DECOMPILER ERROR at PC81: Confused about usage of register: R8 in 'UnsetPending'

      R8_PC81 = (mp.ContextualExpandEnvironmentVariables)(R8_PC81)
      if (sysio.IsFileExists)(R8_PC81) and (R8_PC81:len() < 9 or (string.lower)((string.sub)(R8_PC81, -9)) ~= "mshta.exe") and (sysio.IsFileExists)(R8_PC81) then
        (bm.add_related_file)(R8_PC81)
      end
    end
  end
  do
    return mp.INFECTED
  end
end

