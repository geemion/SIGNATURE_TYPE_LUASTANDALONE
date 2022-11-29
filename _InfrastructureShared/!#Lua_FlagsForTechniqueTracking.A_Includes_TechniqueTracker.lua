-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_FlagsForTechniqueTracking.A_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1, l_0_2 = , pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
if l_0_2 and mp.get_contextdata ~= nil then
  l_0_1 = 
else
  l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
end
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = GetRealPidForScenario(l_0_1)
if l_0_1 ~= nil then
  if IsPidExcluded(l_0_1) or (mp.get_mpattribute)("AGGR:TTExclusion") or (mp.get_mpattribute)("SCRIPT:TTExclusion") or (mp.get_mpattribute)("Lua:TTExclusion") then
    (mp.set_mpattribute)("Lua:TT:TTExclusion")
    ;
    (mp.set_mpattribute)("Lua:TT:DetectionThresholdNotMet")
  else
    local l_0_3, l_0_4 = , GetDetectionThresholdMetReason(l_0_1)
    if l_0_4 then
      (mp.set_mpattribute)("Lua:TT:DetectionThresholdMet")
      if (mp.bitand)(R6_PC74, 1) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC83: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC90: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 2) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC94: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC101: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 4) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC105: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC112: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 8) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC116: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC123: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 16) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC127: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC134: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 32) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC138: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC145: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 64) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC149: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC156: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 128) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC160: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC167: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 256) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC171: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC178: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 512) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC182: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC189: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 1024) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC193: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC200: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 2048) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC204: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC211: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 4096) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
    else
      -- DECOMPILER ERROR at PC216: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC223: Overwrote pending register: R6 in 'AssignReg'

      if (mp.bitand)(R6_PC74, 2147483648) ~= 0 then
        (mp.set_mpattribute)(R6_PC74)
      end
      -- DECOMPILER ERROR at PC227: Overwrote pending register: R6 in 'AssignReg'

      ;
      (mp.set_mpattribute)(R6_PC74)
    end
  end
  do
    local l_0_5 = nil
    if GetTaintLevelHR() ~= nil then
      if GetTaintLevelHR() == "Medium" or GetTaintLevelHR() == "High" then
        (mp.set_mpattribute)("Lua:TT:IsTaintedMachine")
      end
      -- DECOMPILER ERROR at PC244: Overwrote pending register: R6 in 'AssignReg'

      ;
      (mp.set_mpattribute)("Lua:TT:TaintValue!" .. R6_PC74)
    end
    do
      local l_0_6 = nil
      -- DECOMPILER ERROR at PC253: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC255: Overwrote pending register: R6 in 'AssignReg'

      if GetTaintLevelML() ~= nil then
        (mp.set_mpattribute)(R6_PC74)
      end
      return mp.INFECTED
    end
  end
end

