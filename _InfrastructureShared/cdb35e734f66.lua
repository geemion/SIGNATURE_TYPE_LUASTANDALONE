-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/cdb35e734f66 

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
      local l_0_1 = (this_sigattrlog[2]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC43: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
        local l_0_2 = (this_sigattrlog[4]).utf8p1
      else
      end
      -- DECOMPILER ERROR at PC61: Overwrote pending register: R0 in 'AssignReg'

      do
        if not (this_sigattrlog[6]).matched or (this_sigattrlog[7]).matched then
          local l_0_3 = (this_sigattrlog[6]).utf8p1
        else
        end
        -- DECOMPILER ERROR at PC79: Overwrote pending register: R0 in 'AssignReg'

        do
          if not (this_sigattrlog[8]).matched or (this_sigattrlog[9]).matched then
            local l_0_4, l_0_5, l_0_6, l_0_7 = (this_sigattrlog[8]).utf8p1
          else
          end
          if (this_sigattrlog[10]).matched then
            local l_0_8 = (this_sigattrlog[10]).utf8p1
            -- DECOMPILER ERROR at PC100: Overwrote pending register: R1 in 'AssignReg'

            -- DECOMPILER ERROR at PC103: Confused about usage of register: R1 in 'UnsetPending'

            -- DECOMPILER ERROR at PC105: Confused about usage of register: R1 in 'UnsetPending'

            if l_0_8 ~= nil and (nil == "log.log" or nil == "nds.txt" or nil == "b_e.log") then
              return mp.INFECTED
            end
            return mp.CLEAN
          end
        end
      end
    end
  end
end

