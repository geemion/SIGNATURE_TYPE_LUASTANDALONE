-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/Bunitu_Includes_GenericRepairHelpers 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC2: No list found for R0 , SetList fails

local l_0_1 = {}
-- DECOMPILER ERROR at PC7: No list found for R1 , SetList fails

local l_0_2 = {}
-- DECOMPILER ERROR at PC9: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC10: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC11: No list found for R2 , SetList fails

local l_0_3 = {}
-- DECOMPILER ERROR at PC13: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC17: No list found for R3 , SetList fails

do
  local l_0_4 = {}
  -- DECOMPILER ERROR at PC19: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC20: No list found for R4 , SetList fails

  -- DECOMPILER ERROR at PC21: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC44: Overwrote pending register: R6 in 'AssignReg'

  if (Remediation.Threat).Active then
    if Infrastructure_CheckDefenderpresence() then
      FixTamperedExclusionRegEntries("disablebehaviormonitoring")
      ResetWDPreferences()
    end
    FixTamperedWDFirewall()
  end
  -- WARNING: undefined locals caused missing assignments!
end

