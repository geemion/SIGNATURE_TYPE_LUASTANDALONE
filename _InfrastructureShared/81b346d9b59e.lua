-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/81b346d9b59e 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
  local l_0_0 = nil
else
  do
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC64: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
        local l_0_1, l_0_2, l_0_3, l_0_4 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p2))
      else
      end
      if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
        do return mp.CLEAN end
        -- DECOMPILER ERROR at PC94: Confused about usage of register: R0 in 'UnsetPending'

        if (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p2)) ~= nil then
          local l_0_5 = nil
          for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)((string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p2)))) do
            local l_0_6 = nil
            -- DECOMPILER ERROR at PC102: Confused about usage of register: R6 in 'UnsetPending'

            if (sysio.IsFileExists)(R6_PC102) then
              (bm.add_related_file)(R6_PC102)
            end
          end
        end
        do
          return mp.INFECTED
        end
      end
    end
  end
end

