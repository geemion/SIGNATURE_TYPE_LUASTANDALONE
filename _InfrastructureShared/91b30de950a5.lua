-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/91b30de950a5 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R1 in 'AssignReg'

if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  local l_0_2, l_0_10, l_0_12, l_0_14 = nil, nil
else
  do
    do return mp.CLEAN end
    do
      if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
        local l_0_0, l_0_1, l_0_9, l_0_11, l_0_13 = (this_sigattrlog[1]).utf8p2
      end
      -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

      if l_0_0 ~= nil then
        local l_0_3 = nil
        for l_0_7,l_0_8 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_0)) do
          local l_0_4, l_0_5 = nil
          -- DECOMPILER ERROR at PC42: Confused about usage of register: R7 in 'UnsetPending'

          if (sysio.IsFileExists)(R7_PC42) then
            (bm.add_related_file)(R7_PC42)
          end
        end
      end
      do
        -- DECOMPILER ERROR at PC52: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC56: Confused about usage of register: R1 in 'UnsetPending'

        if l_0_4 ~= nil then
          local l_0_15 = nil
          for l_0_19,l_0_20 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_4)) do
            local l_0_16 = nil
            -- DECOMPILER ERROR at PC64: Confused about usage of register: R7 in 'UnsetPending'

            -- DECOMPILER ERROR at PC70: Confused about usage of register: R7 in 'UnsetPending'

            if (sysio.IsFileExists)(R7_PC42) then
              (bm.add_related_file)(R7_PC42)
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

