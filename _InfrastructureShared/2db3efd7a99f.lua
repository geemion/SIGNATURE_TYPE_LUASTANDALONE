-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db3efd7a99f 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2 = nil, nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_3 = nil
  if (string.find)(l_0_3, ":\\windows", 2, true) or (string.find)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_0)), ":\\windows", 2, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end

