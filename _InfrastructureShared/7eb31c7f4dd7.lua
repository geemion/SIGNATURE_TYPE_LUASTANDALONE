-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7eb31c7f4dd7 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
    if l_0_0 ~= nil and (sysio.IsFileExists)(l_0_0) then
      (bm.add_related_file)(l_0_0)
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

