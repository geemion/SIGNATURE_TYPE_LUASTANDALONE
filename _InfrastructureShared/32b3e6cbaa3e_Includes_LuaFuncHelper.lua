-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/32b3e6cbaa3e_Includes_LuaFuncHelper 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

  do
    if l_0_0 then
      local l_0_1 = (mp.ContextualExpandEnvironmentVariables)(l_0_0)
      if IsKeyInRollingQueue("DllSideloadMonitor", l_0_1) then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

