-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/afb3d65f332a 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p1 == nil or (this_sigattrlog[2]).utf8p1 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_3 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1))
  if (string.find)(l_0_3, "\\data.safe.bin", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end

