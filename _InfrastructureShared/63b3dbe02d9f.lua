-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/63b3dbe02d9f 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
    l_0_1 = string
    l_0_1 = l_0_1.match
    l_0_2 = l_0_0
    l_0_3 = "([^\\]-[^\\%.]+)$"
    l_0_1 = l_0_1(l_0_2, l_0_3)
    l_0_0 = l_0_1
  end
  -- DECOMPILER ERROR at PC14: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC18: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil and (string.len)(l_0_0) < 3 then
    return mp.CLEAN
  end
  local l_0_4 = nil
  -- DECOMPILER ERROR at PC33: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC38: Confused about usage of register: R1 in 'UnsetPending'

  if (not (this_sigattrlog[2]).matched or nil == nil) and (string.len)(nil) < 3 then
    return mp.CLEAN
  end
  local l_0_5 = nil
  -- DECOMPILER ERROR at PC53: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC64: Confused about usage of register: R2 in 'UnsetPending'

  if (not (this_sigattrlog[3]).matched or (string.match)(nil, "([^\\]-[^\\%.]+)$") == nil) and (string.len)((string.match)(nil, "([^\\]-[^\\%.]+)$")) < 3 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC71: Confused about usage of register: R2 in 'UnsetPending'

  if l_0_4 == (string.match)(nil, "([^\\]-[^\\%.]+)$") then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC88: Confused about usage of register: R2 in 'UnsetPending'

  if (string.find)(l_0_5, l_0_4, 1, true) and (string.find)(l_0_5, (string.match)(nil, "([^\\]-[^\\%.]+)$"), 1, true) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

