-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/73b34de57d23_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1 = nil
  end
  local l_0_2 = nil
  if not contains(l_0_2, {"regsvr32.exe", "regsvr32_wow64.exe", "regsvr32_x64.exe", "regsvr32_x86.exe", "program files", "\\windows\\installer\\", "wilcomregsvr32setup.exe"}) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

