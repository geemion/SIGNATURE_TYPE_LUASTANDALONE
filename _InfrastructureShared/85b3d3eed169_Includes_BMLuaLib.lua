-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/85b3d3eed169_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  end
  local l_0_1 = nil
  local l_0_2 = "\\w:\\\\windows\\\\(?:help|debug|inf|media)\\\\\\w+\\.exe\\s+.*\\w:\\\\windows\\\\(?:help|debug|inf|media)\\\\\\w+\\.dat\\s+.*\\:\\{[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}\\}"
  -- DECOMPILER ERROR at PC20: Overwrote pending register: R2 in 'AssignReg'

  if false then
    return mp.INFECTED
  end
  return mp.CLEAN
end

