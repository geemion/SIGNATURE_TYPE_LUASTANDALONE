-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b304ebaacf_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  bm_AddRelatedFileFromCommandLine(l_0_0)
  -- DECOMPILER ERROR at PC24: Confused about usage of register: R0 in 'UnsetPending'

  ;
  (bm.add_related_string)("ProcessCreate_Param", l_0_0, bm.RelatedStringBMReport)
  return mp.INFECTED
end

