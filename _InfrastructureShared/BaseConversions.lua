-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/BaseConversions 

-- params : ...
-- function num : 0
StrToBaseN = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_4, l_1_5, l_1_6, l_1_7, l_1_8, l_1_9, l_1_10, l_1_11, l_1_12 = nil
  if not l_1_1 or l_1_1 == 10 then
    local l_1_2 = tostring
    local l_1_3 = l_1_0
    do return l_1_2(l_1_3) end
    -- DECOMPILER ERROR at PC8: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
  local l_1_13 = nil
  local l_1_14 = nil
  -- DECOMPILER ERROR at PC11: Overwrote pending register: R4 in 'AssignReg'

  local l_1_15 = nil
  repeat
    -- DECOMPILER ERROR at PC13: Overwrote pending register: R5 in 'AssignReg'

    local l_1_16 = nil
    local l_1_19 = l_1_13
    local l_1_20, l_1_21, l_1_22, l_1_23 = 1, ("0123456789abcdefghijklmnopqrstuvwxyz"):sub(l_1_15, l_1_15), .end
    l_1_16(l_1_19, l_1_20, l_1_21, l_1_22, l_1_23)
  until l_1_0 == 0
  do
    -- DECOMPILER ERROR at PC25: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC26: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC27: Overwrote pending register: R6 in 'AssignReg'

    local l_1_17 = nil
    l_1_19 = ""
    local l_1_18 = nil
    do return l_1_15(l_1_16, l_1_19) end
    -- DECOMPILER ERROR at PC31: Confused about usage of register R6 for local variables in 'ReleaseLocals'

  end
end


