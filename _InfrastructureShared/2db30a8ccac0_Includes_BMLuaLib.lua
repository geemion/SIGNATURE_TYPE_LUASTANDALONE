-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db30a8ccac0_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_9 = nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC14: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC18: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and l_0_0 ~= "" then
    local l_0_3 = nil
    for l_0_7,l_0_8 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_0)) do
      local l_0_4 = nil
      -- DECOMPILER ERROR at PC24: Confused about usage of register: R6 in 'UnsetPending'

      if R6_PC24 ~= nil and R6_PC24 ~= "" and (sysio.IsFileExists)(R6_PC24) and not (mp.IsKnownFriendlyFile)(R6_PC24, false, false) then
        (bm.add_related_file)(R6_PC24)
      end
    end
  end
  do
    reportSessionInformation()
    return mp.INFECTED
  end
end

