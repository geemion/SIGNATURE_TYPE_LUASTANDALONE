-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/bbb30e4b22d0_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2 = nil
  else
  end
  -- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).ppid ~= nil then
    if isParentPackageManager((this_sigattrlog[3]).ppid) then
      return mp.CLEAN
    else
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

