-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b3e231508c 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  local l_0_2 = nil
  if #{l_0_2:match("/D:(%d+)%.(%d+)%.(%d+)%.(%d+)")} == 4 then
    return mp.CLEAN
  end
  return mp.INFECTED
end

