-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b30ab2e78f 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  else
  end
  -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

  if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (sysio.IsFileExists)((this_sigattrlog[2]).utf8p2)) and (mp.IsKnownFriendlyFile)((this_sigattrlog[2]).utf8p2, true, false) == false then
    (bm.add_threat_file)((this_sigattrlog[2]).utf8p2)
  end
  return mp.INFECTED
end

