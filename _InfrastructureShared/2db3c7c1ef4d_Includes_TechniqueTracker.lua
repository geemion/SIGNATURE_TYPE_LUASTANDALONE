-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db3c7c1ef4d_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  local l_0_0, l_0_1 = nil, nil
  l_0_1 = (this_sigattrlog[1]).ppid
  local l_0_2 = nil
end
do
  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC18: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_0 == nil or l_0_1 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  if (string.sub)(l_0_0, 1, 1) == "%" then
    return mp.CLEAN
  end
  local l_0_3 = nil
  local l_0_4, l_0_5 = , false
  if IsLegacyOrgMachine() == true then
    (bm.trigger_sig)("LegacyOrgMachine", R7_PC44, l_0_4)
  end
  local l_0_6 = nil
  -- DECOMPILER ERROR at PC59: Confused about usage of register: R5 in 'UnsetPending'

  -- DECOMPILER ERROR at PC63: Confused about usage of register: R5 in 'UnsetPending'

  if (versioning.GetCloudBlockLevel)() >= 4 and IsLegacyOrgMachine() == false and (this_sigattrlog[1]).utf8p2 ~= nil and #(this_sigattrlog[1]).utf8p2 >= 1 then
    local l_0_7 = nil
    -- DECOMPILER ERROR at PC67: Overwrote pending register: R7 in 'AssignReg'

    -- DECOMPILER ERROR at PC69: Overwrote pending register: R7 in 'AssignReg'

    if getCustomStringHash(R7_PC44) ~= nil then
      local l_0_8 = nil
      if (MpCommon.GetPersistContextCountNoPath)(R7_PC44) > 0 and not (MpCommon.QueryPersistContextNoPath)(R7_PC44, l_0_4) then
        local l_0_9 = nil
        local l_0_10 = R7_PC44
        for l_0_14,l_0_15 in ipairs((MpCommon.GetPersistContextNoPath)(R7_PC44)) do
          local l_0_11, l_0_12 = , false
          -- DECOMPILER ERROR at PC92: Confused about usage of register: R14 in 'UnsetPending'

          if #R14_PC92 >= 5 then
            if (string.match)(R14_PC92, "^[tT][0-9][0-9][0-9][0-9]") then
              TrackPidAndTechniqueBM(l_0_4, (string.match)(R14_PC92, "^([tT][0-9][0-9][0-9][0-9][%.]?[0-9]?[0-9]?[0-9]?):?(.*)"), R20_PC112, 0)
              l_0_12 = true
            else
              do
                -- DECOMPILER ERROR at PC117: Confused about usage of register: R14 in 'UnsetPending'

                -- DECOMPILER ERROR at PC125: Confused about usage of register: R14 in 'UnsetPending'

                do
                  if (string.sub)(l_0_17, 1, 1) == "[" then
                    local l_0_18, l_0_19 = nil
                    if (string.match)(l_0_17, "^%[(.-)%]=(.+)") ~= nil and l_0_17 ~= nil then
                      (bm.trigger_sig)((string.match)(l_0_17, "^%[(.-)%]=(.+)"), R19_PC137, R20_PC112)
                      l_0_12 = true
                    end
                  end
                  -- DECOMPILER ERROR at PC139: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC139: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC139: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC139: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC139: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
        end
        -- DECOMPILER ERROR at PC141: Confused about usage of register: R9 in 'UnsetPending'

        if l_0_12 then
          l_0_5 = true
          ;
          (MpCommon.AppendPersistContextNoPath)(l_0_10, l_0_4, 0)
        end
      end
    end
  end
  do
    -- DECOMPILER ERROR at PC152: Overwrote pending register: R7 in 'AssignReg'

    local l_0_20 = nil
    if (MpCommon.GetPersistContextCount)(l_0_10) <= 0 or (MpCommon.QueryPersistContextNoPath)(l_0_4, "FilePersistContextToProcessRelay.A") == true then
      return mp.CLEAN
    end
    if (MpCommon.GetPersistContextCount)(l_0_10) > 100 then
      return mp.CLEAN
    end
    local l_0_21 = nil
    for l_0_25,l_0_26 in ipairs((MpCommon.GetPersistContext)(l_0_3)) do
      local l_0_22, l_0_23 = nil
      -- DECOMPILER ERROR at PC182: Confused about usage of register: R12 in 'UnsetPending'

      -- DECOMPILER ERROR at PC186: Confused about usage of register: R12 in 'UnsetPending'

      -- DECOMPILER ERROR at PC191: Confused about usage of register: R12 in 'UnsetPending'

      -- DECOMPILER ERROR at PC198: Confused about usage of register: R12 in 'UnsetPending'

      -- DECOMPILER ERROR at PC206: Overwrote pending register: R20 in 'AssignReg'

      if not (MpCommon.QueryPersistContextNoPath)(l_0_4, l_0_4) and #l_0_4 >= 4 and (string.match)(l_0_4, "^[tT][0-9][0-9][0-9][0-9]") then
        TrackPidAndTechniqueBM(l_0_4, (string.match)(l_0_4, "^([tT][0-9][0-9][0-9][0-9][%.]?[0-9]?[0-9]?[0-9]?):?(.*)"), R18_PC207, R19_PC137, R20_PC112)
        l_0_5 = true
        do
          do
            if #l_0_28 > 5 then
              local l_0_29 = nil
              -- DECOMPILER ERROR at PC221: Overwrote pending register: R18 in 'AssignReg'

              -- DECOMPILER ERROR at PC228: Overwrote pending register: R18 in 'AssignReg'

              -- DECOMPILER ERROR at PC229: Overwrote pending register: R19 in 'AssignReg'

              if not (MpCommon.QueryPersistContextNoPath)(l_0_4, R18_PC207) then
                (MpCommon.AppendPersistContextNoPath)(l_0_4, R18_PC207, R19_PC137)
              end
            end
            -- DECOMPILER ERROR at PC235: Overwrote pending register: R18 in 'AssignReg'

            ;
            (MpCommon.AppendPersistContextNoPath)(l_0_4, l_0_28, R18_PC207)
            -- DECOMPILER ERROR at PC237: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC237: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC237: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    if not (MpCommon.QueryPersistContextNoPath)(l_0_4, "FilePersistContextToProcessRelay.A") then
      (MpCommon.AppendPersistContextNoPath)(l_0_4, "FilePersistContextToProcessRelay.A", 0)
    end
    if l_0_5 == true then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

