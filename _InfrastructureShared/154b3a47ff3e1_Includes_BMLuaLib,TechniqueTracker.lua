-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/154b3a47ff3e1_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 600000000 then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC15: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil, nil, nil
  end
  do
    if (this_sigattrlog[2]).matched then
      local l_0_4 = nil
    end
    do
      if (this_sigattrlog[5]).matched then
        local l_0_5 = nil
      end
      -- DECOMPILER ERROR at PC32: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

      if not l_0_5 or l_0_5 == "" or l_0_5 ~= (this_sigattrlog[2]).utf8p1 or l_0_5 ~= (this_sigattrlog[5]).utf8p1 then
        return mp.CLEAN
      end
      TrackPidAndTechniqueBM("BM", "T1190", "InitialAccess_ElfFileDrop")
      return mp.INFECTED
    end
  end
end

