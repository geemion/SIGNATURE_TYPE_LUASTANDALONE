-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/MeninchSP_Includes_GenericRepairHelpers 

-- params : ...
-- function num : 0
if (string.find)((Remediation.Threat).Name, "BrowserModifier:Win32/MeninchSP", 1, true) then
  Infrastructure_CleanToolbarByName("Iminent Toolbar")
  local l_0_0 = Infrastructure_CleanBHOByNameList
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC18: No list found for R1 , SetList fails

  l_0_0(l_0_1)
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC23: Overwrote pending register: R3 in 'AssignReg'

  l_0_0(l_0_1)
  l_0_1 = {"IMinent WebBooster", "iminent Helper Object"}
  -- DECOMPILER ERROR at PC26: Overwrote pending register: R0 in 'AssignReg'

  l_0_1 = "SearchTheWeb"
  l_0_0(l_0_1)
end

