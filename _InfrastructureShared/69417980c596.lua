-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69417980c596 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_3, l_0_5, l_0_6, l_0_7 = nil, nil
  end
  do
    if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil then
      local l_0_2, l_0_4 = , (this_sigattrlog[5]).utf8p1
    end
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC28: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC32: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC34: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC45: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC52: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_2 ~= nil and l_0_4 ~= nil and l_0_2 ~= nil and l_0_4 ~= nil and (l_0_2 == l_0_4 or (string.match)(l_0_2, "^127.") or (string.match)(l_0_2, "^::1*") or (string.match)(l_0_2, "^0.0.0.0")) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end

