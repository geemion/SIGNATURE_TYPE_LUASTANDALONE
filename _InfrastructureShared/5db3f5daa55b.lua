-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5db3f5daa55b 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC24: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  if (string.match)(l_0_0, "([^\\]+)$") == nil then
    return mp.CLEAN
  end
  if (string.find)((string.match)(l_0_0, "([^\\]+)$"), "~1:", 1, true) == nil then
    return mp.CLEAN
  end
  return mp.INFECTED
end

