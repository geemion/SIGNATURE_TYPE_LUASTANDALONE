-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d3b3b523c8ea_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p1)
    else
    end
    -- DECOMPILER ERROR at PC63: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
        local l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8 = (string.lower)((this_sigattrlog[4]).utf8p1)
      else
      end
      -- DECOMPILER ERROR at PC81: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC88: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC94: Confused about usage of register: R0 in 'UnsetPending'

      if (not (this_sigattrlog[6]).matched or (string.lower)((this_sigattrlog[6]).utf8p1) ~= nil) and (string.sub)((string.lower)((this_sigattrlog[6]).utf8p1), -4) == ".php" then
        if (sysio.IsFileExists)((string.lower)((this_sigattrlog[6]).utf8p1)) then
          (bm.add_related_file)((string.lower)((this_sigattrlog[6]).utf8p1))
        end
        TrackPidAndTechniqueBM("BM", "T1505.003", "Persistence_Webshell")
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

