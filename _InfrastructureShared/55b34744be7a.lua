-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b34744be7a 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = (this_sigattrlog[2]).utf8p2
    else
    end
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

    if not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p2 ~= nil then
      local l_0_5 = nil
      for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[4]).utf8p2)) do
        local l_0_6 = nil
        -- DECOMPILER ERROR at PC47: Confused about usage of register: R6 in 'UnsetPending'

        R6_PC47 = (mp.ContextualExpandEnvironmentVariables)(R6_PC47)
        if (sysio.IsFileExists)(R6_PC47) then
          (bm.add_related_file)(R6_PC47)
        end
      end
    end
    do
      return mp.INFECTED
    end
  end
end

