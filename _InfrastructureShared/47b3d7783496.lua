-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/47b3d7783496 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC15: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_1 = (string.lower)(l_0_0)
  if (string.len)(l_0_1) < 100 then
    return mp.CLEAN
  end
  if (string.find)(l_0_1, "%.ps1") then
    return mp.CLEAN
  end
  if not (string.find)(l_0_1, "{%d%d?}{%d%d?}") then
    return mp.CLEAN
  end
  l_0_1 = (string.gsub)(l_0_1, " ", "")
  local l_0_2 = 0
  for l_0_6 in (string.gmatch)(l_0_1, "[\"\']%-f[\"\']") do
    l_0_2 = l_0_2 + 1
  end
  if l_0_2 < 2 then
    return mp.CLEAN
  end
  local l_0_7 = 0
  for l_0_11 in (string.gmatch)(l_0_1, "{%d%d?}{%d%d?}") do
    l_0_7 = l_0_7 + 1
  end
  if l_0_7 < 2 then
    return mp.CLEAN
  end
  if (l_0_2 > 3 and l_0_7 > 3) or l_0_2 >= 2 and l_0_7 >= 2 and (string.find)(l_0_1, "`", 1, true) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

