-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/121b3bc702fb8 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0.integrity_level <= MpCommon.SECURITY_MANDATORY_MEDIUM_RID then
  local l_0_1 = (MpCommon.GetProcessElevationAndIntegrityLevel)(l_0_0.ppid)
  if l_0_0.integrity_level < l_0_1.IntegrityLevel then
    local l_0_2 = nil
    for l_0_6 = 1, mp.SIGATTR_LOG_SZ do
      if (sigattr_tail[l_0_6]).matched and (sigattr_tail[l_0_6]).attribute == 16393 then
        l_0_2 = (sigattr_tail[l_0_6]).utf8p2
        if l_0_2 ~= nil then
          local l_0_7 = (mp.GetExecutablesFromCommandLine)(l_0_2)
          for l_0_11,l_0_12 in ipairs(l_0_7) do
            l_0_12 = (mp.ContextualExpandEnvironmentVariables)(l_0_12)
            if (sysio.IsFileExists)(l_0_12) then
              (bm.add_related_file)(l_0_12)
            end
          end
        end
      end
    end
    if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p2 ~= nil then
      l_0_2 = (this_sigattrlog[7]).utf8p2
    else
      if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p2 ~= nil then
        l_0_2 = (this_sigattrlog[8]).utf8p2
      else
        if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).utf8p2 ~= nil then
          l_0_2 = (this_sigattrlog[9]).utf8p2
        else
          if (this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p1 ~= nil then
            l_0_2 = (this_sigattrlog[10]).utf8p1
          else
            if (this_sigattrlog[11]).matched and (this_sigattrlog[11]).utf8p1 ~= nil then
              l_0_2 = (this_sigattrlog[11]).utf8p1
            end
          end
        end
      end
    end
    if l_0_2 ~= nil then
      local l_0_13 = nil
      l_0_13 = l_0_13((mp.GetExecutablesFromCommandLine)(l_0_2))
      for l_0_17,l_0_18 in l_0_13 do
        local l_0_18 = nil
        l_0_18 = mp
        l_0_18 = l_0_18.ContextualExpandEnvironmentVariables
        l_0_18 = l_0_18(l_0_17)
        l_0_17 = l_0_18
        l_0_18 = sysio
        l_0_18 = l_0_18.IsFileExists
        l_0_18 = l_0_18(l_0_17)
        if l_0_18 then
          l_0_18 = mp
          l_0_18 = l_0_18.ReportLowfi
          l_0_18(l_0_17, 2668059089)
        end
      end
    end
    do
      do return mp.INFECTED end
      -- DECOMPILER ERROR at PC163: Confused about usage of register R4 for local variables in 'ReleaseLocals'

      l_0_1 = mp
      l_0_1 = l_0_1.CLEAN
      do return l_0_1 end
      -- DECOMPILER ERROR at PC166: Confused about usage of register R3 for local variables in 'ReleaseLocals'

    end
  end
end

