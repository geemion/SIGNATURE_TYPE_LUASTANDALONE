-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/17fb3f1540eae 

-- params : ...
-- function num : 0
local l_0_9 = nil
if (this_sigattrlog[1]).matched then
  local l_0_0, l_0_1 = nil, mp.CLEAN
  l_0_0 = true
  local l_0_2, l_0_6, l_0_8 = nil
else
  do
    -- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC29: Overwrote pending register: R0 in 'AssignReg'

    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_3 = true
    else
      do
        -- DECOMPILER ERROR at PC38: Overwrote pending register: R0 in 'AssignReg'

        -- DECOMPILER ERROR at PC47: Overwrote pending register: R0 in 'AssignReg'

        do
          if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
            local l_0_4, l_0_5 = nil
          end
          if l_0_9 ~= nil then
            local l_0_10 = nil
            -- DECOMPILER ERROR at PC56: Overwrote pending register: R0 in 'AssignReg'

            if l_0_10 == true then
              local l_0_7 = nil
              -- DECOMPILER ERROR at PC76: Overwrote pending register: R0 in 'AssignReg'

              if l_0_9 ~= nil and (sysio.IsFileExists)(l_0_9) and (string.match)(l_0_9, "\\[^\\]+[:][^\\]+%.%a") ~= nil then
                (bm.add_related_file)(l_0_9)
                return mp.INFECTED
              end
            else
              do
                for l_0_14,l_0_15 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_9)) do
                  local l_0_11, l_0_12 = nil
                  -- DECOMPILER ERROR at PC91: Confused about usage of register: R8 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC106: Overwrote pending register: R0 in 'AssignReg'

                  if (sysio.IsFileExists)(R8_PC91) and (string.find)(R8_PC91, "\\[^\\]+[:][^\\]+%.%a") ~= nil then
                    (bm.add_related_file)(l_0_9)
                    l_0_11 = mp.INFECTED
                  end
                end
                do
                  -- DECOMPILER ERROR at PC117: Confused about usage of register: R2 in 'UnsetPending'

                  if l_0_11 == mp.INFECTED then
                    return mp.INFECTED
                  end
                  return mp.CLEAN
                end
              end
            end
          end
        end
      end
    end
  end
end

