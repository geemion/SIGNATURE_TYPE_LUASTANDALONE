-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b344629c19 

-- params : ...
-- function num : 0
if (this_sigattrlog[3]).matched then
  local l_0_0 = (this_sigattrlog[3]).utf8p1
  local l_0_1 = (this_sigattrlog[3]).utf8p2
  if l_0_0 == nil or l_0_1 == nil then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((string.sub)(l_0_0, 0, 3))
  if l_0_2 == nil or #l_0_2 ~= 3 or (string.sub)(l_0_2, -2) ~= ":\\" then
    return mp.CLEAN
  end
  local l_0_3 = (string.lower)((string.sub)(l_0_1, 0, 3))
  if l_0_3 == nil or #l_0_3 ~= 3 or (string.sub)(l_0_3, -2) ~= ":\\" then
    return mp.CLEAN
  end
  if l_0_2 == l_0_3 then
    return mp.CLEAN
  end
  if (sysio.IsFileExists)(l_0_1) then
    (mp.ReportLowfi)(l_0_1, 1104973016)
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

