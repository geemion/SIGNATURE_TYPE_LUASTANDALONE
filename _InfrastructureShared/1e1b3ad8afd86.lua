-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1e1b3ad8afd86 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p1 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  do
    if l_0_0 ~= nil then
      local l_0_2 = nil
      if (mp.ContextualExpandEnvironmentVariables)(l_0_0) ~= nil and (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)(l_0_0)) then
        (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)(l_0_0), 3307547556)
      end
    end
    return mp.INFECTED
  end
end

