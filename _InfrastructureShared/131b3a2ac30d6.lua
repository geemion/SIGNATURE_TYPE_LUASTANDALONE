-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/131b3a2ac30d6 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).wp1 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).wp1 == nil or (this_sigattrlog[4]).matched) and (this_sigattrlog[4]).wp1 ~= nil then
      local l_0_1 = (this_sigattrlog[3]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC68: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[5]).matched or (this_sigattrlog[5]).wp1 == nil or (this_sigattrlog[6]).matched) and (this_sigattrlog[6]).wp1 ~= nil then
        local l_0_2 = (this_sigattrlog[5]).utf8p1
      else
      end
      -- DECOMPILER ERROR at PC96: Overwrote pending register: R0 in 'AssignReg'

      do
        if (not (this_sigattrlog[7]).matched or (this_sigattrlog[7]).wp1 == nil or (this_sigattrlog[8]).matched) and (this_sigattrlog[8]).wp1 ~= nil then
          local l_0_3 = (this_sigattrlog[7]).utf8p1
        else
        end
        -- DECOMPILER ERROR at PC124: Overwrote pending register: R0 in 'AssignReg'

        do
          if (not (this_sigattrlog[9]).matched or (this_sigattrlog[9]).wp1 == nil or (this_sigattrlog[10]).matched) and (this_sigattrlog[10]).wp1 ~= nil then
            local l_0_4 = (this_sigattrlog[9]).utf8p1
          else
          end
          -- DECOMPILER ERROR at PC152: Overwrote pending register: R0 in 'AssignReg'

          do
            if (not (this_sigattrlog[11]).matched or (this_sigattrlog[11]).wp1 == nil or (this_sigattrlog[12]).matched) and (this_sigattrlog[12]).wp1 ~= nil then
              local l_0_5 = (this_sigattrlog[11]).utf8p1
            else
            end
            -- DECOMPILER ERROR at PC180: Overwrote pending register: R0 in 'AssignReg'

            do
              if (not (this_sigattrlog[13]).matched or (this_sigattrlog[13]).wp1 == nil or (this_sigattrlog[14]).matched) and (this_sigattrlog[14]).wp1 ~= nil then
                local l_0_6, l_0_7, l_0_8 = (this_sigattrlog[13]).utf8p1
              else
              end
              if not (this_sigattrlog[15]).matched or (this_sigattrlog[15]).wp1 == nil or (this_sigattrlog[1]).matched then
                local l_0_9 = (this_sigattrlog[15]).utf8p1
                -- DECOMPILER ERROR at PC209: Confused about usage of register: R1 in 'UnsetPending'

                if (this_sigattrlog[1]).utf8p1 ~= nil and l_0_9 ~= nil then
                  local l_0_10 = nil
                  local l_0_11 = (string.match)((this_sigattrlog[1]).utf8p1, "(.*\\)")
                  if (string.match)(l_0_9, "(.*\\)") ~= nil and (string.match)(l_0_9, "(.*\\)") == l_0_11 then
                    return mp.INFECTED
                  end
                end
              end
              do
                return mp.CLEAN
              end
            end
          end
        end
      end
    end
  end
end

