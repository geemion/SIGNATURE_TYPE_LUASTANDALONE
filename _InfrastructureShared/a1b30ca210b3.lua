-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a1b30ca210b3 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = this_sigattrlog[3]
    else
    end
    -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

    if not (this_sigattrlog[5]).matched or this_sigattrlog[5] ~= nil then
      local l_0_5 = nil
      if (mp.GetExecutablesFromCommandLine)((this_sigattrlog[5]).utf8p2) ~= nil then
        for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[5]).utf8p2)) do
          local l_0_6 = nil
          -- DECOMPILER ERROR at PC45: Confused about usage of register: R6 in 'UnsetPending'

          R6_PC45 = (mp.ContextualExpandEnvironmentVariables)(R6_PC45)
          if (sysio.IsFileExists)(R6_PC45) then
            (bm.add_related_file)(R6_PC45)
          end
        end
      end
    end
    do
      return mp.INFECTED
    end
  end
end

