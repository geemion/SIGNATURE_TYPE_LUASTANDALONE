-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45b3c19c6820 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10, l_0_17 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    if not (string.find)((string.lower)(l_0_0), " /u ", 1, true) or not (string.find)((string.lower)(l_0_0), "/logfile= ", 1, true) then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC46: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC58: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC70: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC82: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC94: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC106: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC118: Confused about usage of register: R0 in 'UnsetPending'

    if (string.find)((string.lower)(l_0_0), "\\program files", 1, true) or (string.find)((string.lower)(l_0_0), "/installstatedir=", 1, true) or (string.find)((string.lower)(l_0_0), "microsoft.dynamics.", 1, true) or (string.find)((string.lower)(l_0_0), "microsoft.management.", 1, true) or (string.find)((string.lower)(l_0_0), "windowsfabric", 1, true) or (string.find)((string.lower)(l_0_0), "deployment", 1, true) or (string.find)((string.lower)(l_0_0), "upmWmi", 1, true) then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC131: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_11 = nil
    for l_0_15,l_0_16 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_0)) do
      local l_0_12 = nil
      -- DECOMPILER ERROR at PC139: Confused about usage of register: R6 in 'UnsetPending'

      -- DECOMPILER ERROR at PC145: Confused about usage of register: R6 in 'UnsetPending'

      if (sysio.IsFileExists)(l_0_6) then
        (mp.ReportLowfi)(l_0_6, 2023886462)
        -- DECOMPILER ERROR at PC150: Confused about usage of register: R6 in 'UnsetPending'

        ;
        (bm.add_related_file)(l_0_6)
      end
    end
  end
  do
    ;
    (bm.add_action)("EmsScan", 3000)
    return mp.INFECTED
  end
end

