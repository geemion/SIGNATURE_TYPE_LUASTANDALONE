-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/59b3623d340f 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8 = nil
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
  end
  return mp.INFECTED
end

