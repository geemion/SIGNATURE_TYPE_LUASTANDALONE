-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/29db392dbce75 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1 = (this_sigattrlog[3]).utf8p2
    else
    end
    -- DECOMPILER ERROR at PC43: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[5]).matched or (this_sigattrlog[6]).matched then
        local l_0_2 = (this_sigattrlog[5]).utf8p2
      else
      end
      -- DECOMPILER ERROR at PC61: Overwrote pending register: R0 in 'AssignReg'

      do
        if not (this_sigattrlog[7]).matched or (this_sigattrlog[8]).matched then
          local l_0_3 = (this_sigattrlog[7]).utf8p2
        else
        end
        -- DECOMPILER ERROR at PC79: Overwrote pending register: R0 in 'AssignReg'

        do
          if not (this_sigattrlog[9]).matched or (this_sigattrlog[10]).matched then
            local l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_15 = (this_sigattrlog[9]).utf8p2
          else
          end
          -- DECOMPILER ERROR at PC93: Confused about usage of register: R0 in 'UnsetPending'

          -- DECOMPILER ERROR at PC99: Confused about usage of register: R0 in 'UnsetPending'

          if (not (this_sigattrlog[11]).matched or (this_sigattrlog[11]).utf8p2 ~= nil) and (string.len)((this_sigattrlog[11]).utf8p2) > 3 then
            local l_0_9 = nil
            if (mp.GetExecutablesFromCommandLine)((this_sigattrlog[11]).utf8p2) ~= nil then
              for l_0_13,l_0_14 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[11]).utf8p2)) do
                local l_0_10 = nil
                -- DECOMPILER ERROR at PC109: Confused about usage of register: R6 in 'UnsetPending'

                R6_PC109 = (mp.ContextualExpandEnvironmentVariables)(R6_PC109)
                ;
                (bm.add_related_file)(R6_PC109)
              end
            end
          end
          do
            local l_0_16 = (string.lower)((bm.get_imagepath)())
            if (string.find)(l_0_16, "\\cscript.exe", 1, true) or (string.find)(l_0_16, "\\wscript.exe", 1, true) then
              return mp.INFECTED
            end
            return mp.CLEAN
          end
        end
      end
    end
  end
end

