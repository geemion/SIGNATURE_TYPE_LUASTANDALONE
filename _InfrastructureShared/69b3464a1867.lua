-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b3464a1867 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[2]).matched and (this_sigattrlog[3]).matched and (this_sigattrlog[4]).matched and (this_sigattrlog[5]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p1
  local l_0_1 = (this_sigattrlog[2]).utf8p1
  local l_0_2 = (this_sigattrlog[3]).utf8p1
  local l_0_3 = (this_sigattrlog[4]).utf8p1
  local l_0_4 = (this_sigattrlog[5]).utf8p1
  if l_0_0 == nil or l_0_1 == nil or l_0_2 == nil or l_0_3 == nil or l_0_4 == nil then
    return mp.CLEAN
  end
  local l_0_5, l_0_6 = l_0_0:match("(.+\\)([^\\]+)$")
  local l_0_7, l_0_8 = l_0_1:match("(.+\\)([^\\]+)$")
  local l_0_9, l_0_10 = l_0_2:match("(.+\\)([^\\]+)$")
  local l_0_11, l_0_12 = l_0_3:match("(.+\\)([^\\]+)$")
  local l_0_13, l_0_14 = l_0_4:match("(.+\\)([^\\]+)$")
  l_0_5 = (string.lower)((MpCommon.PathToWin32Path)(l_0_5))
  l_0_7 = (string.lower)((MpCommon.PathToWin32Path)(l_0_7))
  l_0_9 = (string.lower)((MpCommon.PathToWin32Path)(l_0_9))
  l_0_11 = (string.lower)((MpCommon.PathToWin32Path)(l_0_11))
  l_0_13 = (string.lower)((MpCommon.PathToWin32Path)(l_0_13))
  l_0_6 = (string.lower)(l_0_6)
  l_0_8 = (string.lower)(l_0_8)
  l_0_10 = (string.lower)(l_0_10)
  l_0_12 = (string.lower)(l_0_12)
  l_0_14 = (string.lower)(l_0_14)
  if l_0_6 == l_0_8 and l_0_6 == l_0_10 and l_0_10 == l_0_12 and l_0_10 == l_0_14 and l_0_5 ~= l_0_7 and l_0_5 ~= l_0_9 and l_0_7 ~= l_0_9 and l_0_9 ~= l_0_11 and l_0_11 ~= l_0_13 then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

