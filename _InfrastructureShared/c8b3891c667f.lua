-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c8b3891c667f 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[6]).matched then
    local l_0_0 = nil
    if (string.find)(l_0_0, "/download", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

