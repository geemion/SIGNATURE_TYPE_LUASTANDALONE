-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/51b33e20315e 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_3 = nil, nil
  end
  do
    if (this_sigattrlog[3]).matched then
      local l_0_1, l_0_4 = , (this_sigattrlog[3]).timestamp
    end
    -- DECOMPILER ERROR at PC28: Overwrote pending register: R2 in 'AssignReg'

    do
      if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
        local l_0_2, l_0_5 = nil
      end
      if nil == nil then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC36: Confused about usage of register: R2 in 'UnsetPending'

      local l_0_6 = nil
      do
        if ((sysio.GetLastResult)()).Success and (sysio.GetFileLastWriteTime)(nil) ~= 0 then
          local l_0_7 = nil
          -- DECOMPILER ERROR at PC53: Confused about usage of register: R3 in 'UnsetPending'

          if (MpCommon.GetCurrentTimeT)() < (sysio.GetFileLastWriteTime)(nil) / 10000000 - 11644473600 or (MpCommon.GetCurrentTimeT)() - ((sysio.GetFileLastWriteTime)(nil) / 10000000 - 11644473600) > 180 then
            return mp.CLEAN
          end
        end
        -- DECOMPILER ERROR at PC59: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC61: Confused about usage of register: R1 in 'UnsetPending'

        do
          if l_0_6 < l_0_7 and l_0_7 - l_0_6 <= 50000000 then
            local l_0_8 = nil
            if ((MpCommon.GetProcessElevationAndIntegrityLevel)((this_sigattrlog[3]).ppid)).IntegrityLevel == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
              return mp.INFECTED
            end
          end
          return mp.CLEAN
        end
      end
    end
  end
end

