-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#AttrCounter_Includes_SetAttributeFromClassifierScoresEx 

-- params : ...
-- function num : 0
local l_0_0 = (mp.enum_mpattributesubstring)("AnalysisProcName")
if l_0_0 and type(l_0_0) == "table" then
  local l_0_1 = SetAttributeFromClassifierScoresEx
  local l_0_2 = #l_0_0
  local l_0_3 = {}
  -- DECOMPILER ERROR at PC20: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC21: Overwrote pending register: R4 in 'AssignReg'

  l_0_1(l_0_2, l_0_3, 60)
end
do
  do
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

