-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/51b34d842da9 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_2 = nil, nil
  end
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC32: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC33: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil and (this_sigattrlog[2]).utf8p2 ~= nil and (string.find)((this_sigattrlog[2]).utf8p2, l_0_1, 1, true) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

