-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2ebb32d81a556_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p1 ~= nil and (this_sigattrlog[11]).matched and (this_sigattrlog[11]).utf8p1 ~= nil then
  local l_0_0, l_0_1 = nil, nil
  l_0_1 = (this_sigattrlog[11]).utf8p1
  local l_0_2 = nil
else
end
do
  -- DECOMPILER ERROR at PC76: Overwrote pending register: R0 in 'AssignReg'

  if (not (this_sigattrlog[9]).matched or (this_sigattrlog[9]).utf8p1 == nil or not (this_sigattrlog[12]).matched or (this_sigattrlog[12]).utf8p1 == nil or (this_sigattrlog[10]).matched) and (this_sigattrlog[10]).utf8p1 ~= nil and (this_sigattrlog[13]).matched and (this_sigattrlog[13]).utf8p1 ~= nil then
    local l_0_3, l_0_4, l_0_6 = (this_sigattrlog[9]).utf8p1, (this_sigattrlog[12]).utf8p1
    l_0_6 = this_sigattrlog
    l_0_6 = l_0_6[13]
    l_0_4 = l_0_6.utf8p1
    local l_0_5, l_0_8 = nil
  end
  do
    -- DECOMPILER ERROR at PC80: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC82: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC84: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC86: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_3 and l_0_4 and l_0_3:lower() ~= l_0_4:lower() then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC95: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_3)
    local l_0_9 = nil
    if contains(l_0_7, {"cnmss"}) then
      return mp.CLEAN
    end
    if (sysio.IsFileExists)(l_0_7) then
      (bm.add_related_file)(l_0_7)
    end
    ;
    (bm.add_related_string)("Office_SusCreate_A", l_0_7, bm.RelatedStringBMReport)
    local l_0_10 = nil
    if IsProcNameInParentProcessTree("BM", {"winword.exe", "excel.exe", "powerpnt.exe", "mspub.exe"}) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

