-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Vampa_Includes_SetAttributeF 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_mpattributevalue)("RPF:Vampa:Probability")
if l_0_0 ~= nil and l_0_0 >= 50 and l_0_0 <= 100 then
  if (mp.get_mpattribute)("AGGR:CombinedJavaClass") then
    (mp.set_mpattribute)("Lua:JCM_Vampa:GE50")
  end
  if l_0_0 >= 70 and (mp.get_mpattribute)("JavaDahotException") ~= true then
    local l_0_1 = {}
    -- DECOMPILER ERROR at PC34: No list found for R1 , SetList fails

    -- DECOMPILER ERROR at PC35: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC36: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC37: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC38: Overwrote pending register: R5 in 'AssignReg'

    ;
    (99)(95, 90, 80)
  end
end
do
  do
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

