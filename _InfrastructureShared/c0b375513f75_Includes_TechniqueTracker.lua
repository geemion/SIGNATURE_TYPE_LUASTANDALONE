-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c0b375513f75_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if IsTechniqueObservedGlobal("T1098", false) then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  do
    if not IsTechniqueObservedGlobal("T1078", false) or IsTechniqueObservedGlobal("T1136", false) then
      local l_0_1, l_0_2, l_0_3 = "T1078"
    end
    -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 then
      (bm.add_related_string)("mitre_technique", l_0_1, bm.RelatedStringBMReport)
      return mp.INFECTED
    else
      TrackPidAndTechniqueBM("BM", "T1021.004", "LateralMovement")
    end
    return mp.CLEAN
  end
end

