-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/89b3aea49e02 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC14: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil
  else
  end
  if (this_sigattrlog[2]).matched then
    do return mp.CLEAN end
    if (string.match)((string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p2)), "http[s]?%:%/%/") ~= nil then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end
