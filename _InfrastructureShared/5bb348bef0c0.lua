-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5bb348bef0c0 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9 = nil
  else
  end
  if not (this_sigattrlog[2]).matched or not (string.lower)((this_sigattrlog[2]).utf8p2) then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC32: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC50: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC59: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC68: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC77: Confused about usage of register: R0 in 'UnsetPending'

  if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "%systemroot%\\", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "\\windows\\", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "%programfiles%\\", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "\\program files\\", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "%programfiles(x86)%\\", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "\\program files (x86)\\", 1, true) then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC89: Confused about usage of register: R0 in 'UnsetPending'

  ;
  (bm.add_related_file)((string.lower)((this_sigattrlog[2]).utf8p2))
  return mp.INFECTED
end

