-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b3f44b3390 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  else
  end
  if not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p2 == nil or (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[3]).utf8p2)) == nil then
    return mp.CLEAN
  end
  local l_0_3 = nil
  -- DECOMPILER ERROR at PC66: Overwrote pending register: R1 in 'AssignReg'

  if not (this_sigattrlog[1]).matched or (this_sigattrlog[1]).utf8p1 == nil or nil == nil then
    return mp.CLEAN
  end
  local l_0_4 = nil
  local l_0_5 = (string.match)(l_0_3, "(.-)[^\\]-[^\\%.]+$")
  if l_0_5 == nil or #l_0_5 == 0 or (string.match)(l_0_4, "(.-)[^\\]-[^\\%.]+$") == nil or #(string.match)(l_0_4, "(.-)[^\\]-[^\\%.]+$") == 0 then
    return mp.CLEAN
  end
  if l_0_5 ~= (string.match)(l_0_4, "(.-)[^\\]-[^\\%.]+$") then
    return mp.CLEAN
  end
  ;
  (bm.add_related_file)(l_0_3)
  return mp.INFECTED
end

