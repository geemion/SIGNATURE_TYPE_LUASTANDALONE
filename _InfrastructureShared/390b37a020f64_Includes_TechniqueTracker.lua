-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/390b37a020f64_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC38: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_1 = (this_sigattrlog[2]).utf8p2
    end
    -- DECOMPILER ERROR at PC64: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p2 == nil or (this_sigattrlog[5]).matched) and (this_sigattrlog[5]).utf8p2 ~= nil then
        local l_0_2 = (this_sigattrlog[4]).utf8p2
      end
      -- DECOMPILER ERROR at PC90: Overwrote pending register: R0 in 'AssignReg'

      do
        if (not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).utf8p2 == nil or (this_sigattrlog[7]).matched) and (this_sigattrlog[7]).utf8p2 ~= nil then
          local l_0_3 = (this_sigattrlog[6]).utf8p2
        end
        -- DECOMPILER ERROR at PC116: Overwrote pending register: R0 in 'AssignReg'

        do
          if (not (this_sigattrlog[8]).matched or (this_sigattrlog[8]).utf8p2 == nil or (this_sigattrlog[9]).matched) and (this_sigattrlog[9]).utf8p2 ~= nil then
            local l_0_4 = (this_sigattrlog[8]).utf8p2
          end
          -- DECOMPILER ERROR at PC142: Overwrote pending register: R0 in 'AssignReg'

          do
            if (not (this_sigattrlog[10]).matched or (this_sigattrlog[10]).utf8p2 == nil or (this_sigattrlog[11]).matched) and (this_sigattrlog[11]).utf8p2 ~= nil then
              local l_0_5 = (this_sigattrlog[10]).utf8p2
            end
            -- DECOMPILER ERROR at PC168: Overwrote pending register: R0 in 'AssignReg'

            do
              if (not (this_sigattrlog[12]).matched or (this_sigattrlog[12]).utf8p2 == nil or (this_sigattrlog[13]).matched) and (this_sigattrlog[13]).utf8p2 ~= nil then
                local l_0_6 = (this_sigattrlog[12]).utf8p2
              end
              -- DECOMPILER ERROR at PC194: Overwrote pending register: R0 in 'AssignReg'

              do
                if (not (this_sigattrlog[14]).matched or (this_sigattrlog[14]).utf8p2 == nil or (this_sigattrlog[15]).matched) and (this_sigattrlog[15]).utf8p2 ~= nil then
                  local l_0_7, l_0_8, l_0_9, l_0_10, l_0_11, l_0_12, l_0_13, l_0_14, l_0_15, l_0_16, l_0_17, l_0_18, l_0_19, l_0_20, l_0_21 = (this_sigattrlog[14]).utf8p2
                end
                -- DECOMPILER ERROR at PC197: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC204: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC211: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC218: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC225: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC232: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC239: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC246: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC253: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC260: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC267: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC274: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC281: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC288: Confused about usage of register: R0 in 'UnsetPending'

                if not (string.match)(l_0_7, "%Wvar $password[%W$]") and not (string.match)(l_0_7, "%Wpassword[%W$]") and not (string.match)(l_0_7, "%W-p[%W$]") and not (string.match)(l_0_7, "%Wpass[%W$]") and not (string.match)(l_0_7, "%Wuser[%W$]") and not (string.match)(l_0_7, "%Wcredentials[%W$]") and not (string.match)(l_0_7, "%Wpwd[%W$]") and not (string.match)(l_0_7, "%Wkey[%W$]") and not (string.match)(l_0_7, "%Wmysql[%W$]") and not (string.match)(l_0_7, "%Wroot[%W$]") and not (string.match)(l_0_7, "%Wmysql[%W$]") and not (string.match)(l_0_7, "%Wtelnet[%W$]") and not (string.match)(l_0_7, "%Wssh[%W$]") and not (string.match)(l_0_7, "%Wroot[%W$]") then
                  return mp.CLEAN
                end
                TrackPidAndTechniqueBM("BM", "T1552.001", "CredentialAccess")
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
end

