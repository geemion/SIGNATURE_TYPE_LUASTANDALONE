-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/35b3e8dde797_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7 = nil
  end
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC18: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC50: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC58: Confused about usage of register: R0 in 'UnsetPending'

  if (string.sub)(l_0_0, 0, 5) == "/tmp/" or (string.sub)(l_0_0, 0, 9) == "/var/tmp/" or (string.sub)(l_0_0, 0, 9) == "/dev/shm/" or (string.sub)(l_0_0, 0, 10) == "/var/mail/" or (string.sub)(l_0_0, 0, 16) == "/var/spool/mail/" or (string.sub)(l_0_0, 0, 10) == "/var/lock/" or (string.sub)(l_0_0, 0, 6) == "/home/" then
    TrackPidAndTechniqueBM("BM", "T1486", "Impact_Ransom")
    return mp.INFECTED
  end
  return mp.CLEAN
end

