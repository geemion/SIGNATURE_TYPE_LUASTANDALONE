-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19b329cb4fc6 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (string.find)(l_0_0, "-u", 1, true) and (string.find)(l_0_0, "//", 1, true) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

