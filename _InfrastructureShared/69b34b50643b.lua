-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b34b50643b 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_2 = nil
    for l_0_6,l_0_7 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_0)) do
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC25: Confused about usage of register: R6 in 'UnsetPending'

      R6_PC25 = (mp.ContextualExpandEnvironmentVariables)(R6_PC25)
      if (sysio.IsFileExists)(R6_PC25) then
        (bm.add_related_file)(R6_PC25)
      end
    end
  end
  do
    return mp.INFECTED
  end
end

