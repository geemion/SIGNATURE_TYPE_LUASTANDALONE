-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/91b34d54a0fb 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[2]).matched or this_sigattrlog[2] ~= nil then
    local l_0_4 = nil
    for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[2]).utf8p2)) do
      local l_0_5 = nil
      -- DECOMPILER ERROR at PC27: Confused about usage of register: R6 in 'UnsetPending'

      R6_PC27 = (mp.ContextualExpandEnvironmentVariables)(R6_PC27)
      if (sysio.IsFileExists)(R6_PC27) then
        (bm.add_related_file)(R6_PC27)
      end
    end
  end
  do
    return mp.INFECTED
  end
end
