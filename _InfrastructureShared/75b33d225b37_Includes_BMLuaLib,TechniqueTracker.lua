-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/75b33d225b37_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  local l_0_2 = nil
  if contains(l_0_2, {"://temp.sh/", "://termbin.com/", "://uguu.se/"}) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

