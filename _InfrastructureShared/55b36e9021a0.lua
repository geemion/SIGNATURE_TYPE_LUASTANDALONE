-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b36e9021a0 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R1 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_2 = nil
  end
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
      local l_0_0 = (this_sigattrlog[2]).utf8p1
    end
    local l_0_3 = nil
    if l_0_3 ~= nil then
      local l_0_1 = nil
      if (sysio.IsFileExists)(l_0_3) then
        (bm.add_related_file)(l_0_3)
        ;
        (table.insert)({}, l_0_3)
        -- DECOMPILER ERROR at PC52: Confused about usage of register: R2 in 'UnsetPending'

        ;
        (MpCommon.SetPersistContextNoPath)("ServiceCreationScript", {}, 100)
      end
      if l_0_1 ~= nil then
        local l_0_4 = nil
        for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_1)) do
          local l_0_5 = nil
          -- DECOMPILER ERROR at PC67: Confused about usage of register: R8 in 'UnsetPending'

          R8_PC67 = (mp.ContextualExpandEnvironmentVariables)(R8_PC67)
          if (sysio.IsFileExists)(R8_PC67) == true then
            (bm.add_related_file)(R8_PC67)
          end
        end
      end
      do
        do
          do return mp.INFECTED end
          return mp.CLEAN
        end
      end
    end
  end
end

