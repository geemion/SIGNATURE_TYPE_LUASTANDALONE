-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db3506f116b 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).wp1 ~= nil then
    local l_0_0, l_0_2 = nil, nil
  end
  do
    if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp1 ~= nil then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC40: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil and (mp.utf16to8)((this_sigattrlog[1]).wp1) ~= nil and (string.find)((mp.utf16to8)((this_sigattrlog[1]).wp1), l_0_1, 1, true) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

