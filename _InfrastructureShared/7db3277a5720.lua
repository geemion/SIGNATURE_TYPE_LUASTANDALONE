-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7db3277a5720 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched then
  local l_0_0, l_0_1, l_0_3, l_0_4, l_0_5, l_0_7, l_0_9 = nil, nil
  l_0_3 = string
  l_0_3 = l_0_3.lower
  l_0_4 = this_sigattrlog
  l_0_4 = l_0_4[1]
  l_0_4 = l_0_4.utf8p1
  l_0_3 = l_0_3(l_0_4)
  l_0_1 = l_0_3
  local l_0_2, l_0_6, l_0_8, l_0_10 = nil
end
do
  -- DECOMPILER ERROR at PC49: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[2]).matched or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), ":\\users\\", 1, true) then
    (bm.add_threat_file)((string.lower)((this_sigattrlog[2]).utf8p2))
    ;
    (bm.add_threat_file)((string.lower)((this_sigattrlog[2]).utf8p1))
    return mp.INFECTED
  end
  return mp.CLEAN
end

