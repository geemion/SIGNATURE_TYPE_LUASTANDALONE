-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/105b36f5750d4 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_1 = (this_sigattrlog[2]).utf8p2
    else
    end
    -- DECOMPILER ERROR at PC68: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p2 == nil or (this_sigattrlog[5]).matched) and (this_sigattrlog[5]).utf8p2 ~= nil then
        local l_0_2, l_0_3 = (this_sigattrlog[4]).utf8p2
      else
      end
      if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
        local l_0_4 = (this_sigattrlog[6]).utf8p2
        -- DECOMPILER ERROR at PC100: Overwrote pending register: R1 in 'AssignReg'

        -- DECOMPILER ERROR at PC103: Confused about usage of register: R1 in 'UnsetPending'

        if ((this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p1 ~= nil and nil == nil) or #nil < 48 then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC111: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC120: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC129: Confused about usage of register: R1 in 'UnsetPending'

        if (string.find)(nil, "\\\\admin$\\\\", 1, true) or (string.find)(nil, "\\[a-z]%$\\") then
          local l_0_5 = nil
          if (string.lower)((MpCommon.PathToWin32Path)(nil)) ~= nil and (string.sub)((string.lower)((MpCommon.PathToWin32Path)(nil)), 0, 2) == "\\\\" and l_0_4 ~= nil then
            local l_0_6 = nil
            for l_0_10,l_0_11 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_4)) do
              local l_0_7 = nil
              -- DECOMPILER ERROR at PC154: Confused about usage of register: R8 in 'UnsetPending'

              R8_PC154 = (mp.ContextualExpandEnvironmentVariables)(R8_PC154)
              if (sysio.IsFileExists)(R8_PC154) == true then
                if (string.find)((string.lower)(R8_PC154), "getupdatedates", 1, true) then
                  return mp.CLEAN
                end
                local l_0_13 = {[".exe"] = true}
                if (string.sub)(l_0_12, -4) ~= nil and l_0_13[(string.sub)(l_0_12, -4)] ~= true then
                  (bm.add_related_file)(l_0_12)
                end
              end
            end
            return mp.INFECTED
          end
        end
        do
          return mp.CLEAN
        end
      end
    end
  end
end

