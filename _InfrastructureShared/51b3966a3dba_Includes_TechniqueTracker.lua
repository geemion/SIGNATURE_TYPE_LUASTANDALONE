-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/51b3966a3dba_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_2 = nil, nil
  end
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

    if (this_sigattrlog[2]).utf8p2 == nil or l_0_1 == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC35: Confused about usage of register: R1 in 'UnsetPending'

    local l_0_3 = nil
    -- DECOMPILER ERROR at PC45: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC52: Confused about usage of register: R1 in 'UnsetPending'

    if ((string.lower)((this_sigattrlog[2]).utf8p2)):find("csc.exe", 1, true) or ((string.lower)((this_sigattrlog[2]).utf8p2)):find("cvtres.exe", 1, true) or ((string.lower)((this_sigattrlog[2]).utf8p2)):find("wermgr.exe", 1, true) then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC76: Confused about usage of register: R1 in 'UnsetPending'

    do
      if IsTacticObservedForPid(l_0_3, "webshell_parent") or IsTacticObservedForPid(l_0_3, "webshell_childproc") then
        local l_0_4 = nil
        for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)((string.lower)((this_sigattrlog[2]).utf8p2))) do
          local l_0_5 = nil
          -- DECOMPILER ERROR at PC84: Confused about usage of register: R7 in 'UnsetPending'

          R7_PC84 = (mp.ContextualExpandEnvironmentVariables)(R7_PC84)
          if (sysio.IsFileExists)(R7_PC84) then
            (bm.add_related_file)(R7_PC84)
          end
        end
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

