-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/77b32f8d41b7 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0, l_0_1 = nil
  else
  end
  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).wp2 == nil or (string.match)((this_sigattrlog[2]).utf8p2, "%d+%.%d+%.%d+%.%d+") then
    return mp.INFECTED
  end
  return mp.CLEAN
end

