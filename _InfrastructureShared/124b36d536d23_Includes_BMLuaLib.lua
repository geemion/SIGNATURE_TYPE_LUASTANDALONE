-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/124b36d536d23_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC15: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_3, l_0_4, l_0_6 = nil, nil
  end
  do
    if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
      local l_0_2, l_0_5, l_0_7 = , ((this_sigattrlog[6]).utf8p2):lower()
    end
    -- DECOMPILER ERROR at PC32: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_5 == nil or l_0_2 == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

    ;
    (bm.add_related_string)("Office_SusCreate_D", l_0_2, bm.RelatedStringBMReport)
    -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_8 = nil
    if GetFileName(l_0_2) == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC55: Confused about usage of register: R1 in 'UnsetPending'

    if not contains(l_0_5, GetFileName(l_0_2)) then
      return mp.CLEAN
    end
    l_0_8 = (mp.ContextualExpandEnvironmentVariables)(l_0_8)
    if (sysio.IsFileExists)(l_0_8) then
      (bm.add_related_file)(l_0_8)
      ;
      (bm.add_threat_file)(l_0_8)
    end
    return mp.INFECTED
  end
end

