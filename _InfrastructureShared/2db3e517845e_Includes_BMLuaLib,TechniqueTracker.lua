-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db3e517845e_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (versioning.GetCloudBlockLevel)() >= 4 then
    TrackPidAndTechniqueBM(l_0_0, "T1562.001", "DefenseEvasion_AslrToggle")
    -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_4, l_0_5 = , (bm.get_process_relationships)(l_0_0)
    for l_0_9,l_0_10 in ipairs(l_0_5) do
      local l_0_6 = nil
      -- DECOMPILER ERROR at PC30: Confused about usage of register: R7 in 'UnsetPending'

      ;
      (bm.add_related_process)(R7_PC30.ppid)
      TrackPidAndTechniqueBM(R7_PC30.ppid, "T1562.001", "DefenseEvasion_AslrToggle")
    end
    addRelatedProcess()
    reportRelatedBmHits()
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

