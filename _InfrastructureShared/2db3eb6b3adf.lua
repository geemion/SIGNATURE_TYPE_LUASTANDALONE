-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db3eb6b3adf 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil
  else
  end
  if not (this_sigattrlog[2]).matched or ((string.lower)((this_sigattrlog[2]).utf8p2)):find("hkey", 1, true) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

