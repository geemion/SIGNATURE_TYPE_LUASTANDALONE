-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d9b361338662_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = nil
  else
  end
  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

  if (not (this_sigattrlog[2]).matched or (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1) ~= nil) and (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1)) then
    (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1))
  end
  add_parents()
  return mp.INFECTED
end

