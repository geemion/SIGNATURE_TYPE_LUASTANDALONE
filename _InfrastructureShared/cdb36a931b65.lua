-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/cdb36a931b65 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[2]).matched and (this_sigattrlog[3]).matched and (this_sigattrlog[4]).matched and (this_sigattrlog[5]).matched and (this_sigattrlog[6]).matched and (this_sigattrlog[7]).matched and (this_sigattrlog[8]).matched and (this_sigattrlog[9]).matched and (this_sigattrlog[10]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  local l_0_1 = (this_sigattrlog[2]).utf8p2
  local l_0_2 = (this_sigattrlog[3]).utf8p2
  local l_0_3 = (this_sigattrlog[1]).utf8p1
  local l_0_4 = (this_sigattrlog[2]).utf8p1
  local l_0_5 = (this_sigattrlog[3]).utf8p1
  local l_0_6 = (this_sigattrlog[4]).utf8p1
  local l_0_7 = (this_sigattrlog[5]).utf8p1
  local l_0_8 = (this_sigattrlog[6]).utf8p1
  local l_0_9 = (this_sigattrlog[7]).utf8p1
  local l_0_10 = (this_sigattrlog[8]).utf8p1
  local l_0_11 = (this_sigattrlog[9]).utf8p1
  local l_0_12 = (this_sigattrlog[10]).utf8p1
  if l_0_0 == nil or l_0_1 == nil or l_0_2 == nil or l_0_3 == nil or l_0_4 == nil or l_0_5 == nil or l_0_6 == nil or l_0_7 == nil or l_0_8 == nil or l_0_9 == nil or l_0_10 == nil or l_0_11 == nil or l_0_12 == nil then
    return mp.CLEAN
  end
  local l_0_13 = (string.match)(l_0_0, "[^.]+$")
  local l_0_14 = (string.match)(l_0_1, "[^.]+$")
  local l_0_15 = (string.match)(l_0_2, "[^.]+$")
  local l_0_16 = (string.match)(l_0_3, "[^.]+$")
  local l_0_17 = (string.match)(l_0_4, "[^.]+$")
  local l_0_18 = (string.match)(l_0_5, "[^.]+$")
  if l_0_13 == nil or l_0_14 == nil or l_0_15 == nil or l_0_16 == nil or l_0_17 == nil or l_0_18 == nil then
    return mp.CLEAN
  end
  if (string.len)(l_0_16) < 4 or l_0_13 == l_0_16 or l_0_14 == l_0_17 or l_0_15 == l_0_18 then
    return mp.CLEAN
  end
  local l_0_19 = (string.match)(l_0_0, "[^\\]+$")
  local l_0_20 = (string.match)(l_0_1, "[^\\]+$")
  local l_0_21 = (string.match)(l_0_2, "[^\\]+$")
  local l_0_22 = (string.match)(l_0_3, "[^\\]+$")
  local l_0_23 = (string.match)(l_0_4, "[^\\]+$")
  local l_0_24 = (string.match)(l_0_5, "[^\\]+$")
  local l_0_25, l_0_26 = (string.gsub)(l_0_22, "%.", "")
  local l_0_27, l_0_28 = (string.gsub)(l_0_23, "%.", "")
  local l_0_29, l_0_30 = (string.gsub)(l_0_24, "%.", "")
  if l_0_19 == nil or l_0_20 == nil or l_0_21 == nil or l_0_22 == nil or l_0_23 == nil or l_0_24 == nil or l_0_26 == nil or l_0_28 == nil or l_0_30 == nil then
    return mp.CLEAN
  end
  if l_0_26 < 2 or l_0_28 < 2 or l_0_30 < 2 or (string.len)(l_0_22) < (string.len)(l_0_19) or (string.len)(l_0_23) < (string.len)(l_0_20) or (string.len)(l_0_24) < (string.len)(l_0_21) then
    return mp.CLEAN
  end
  if (string.find)(l_0_22, l_0_19, 1, true) == nil or (string.find)(l_0_23, l_0_20, 1, true) == nil or (string.find)(l_0_24, l_0_21, 1, true) == nil then
    return mp.CLEAN
  end
  local l_0_31 = (string.match)(l_0_6, "[^.]+$")
  local l_0_32 = (string.match)(l_0_7, "[^.]+$")
  local l_0_33 = (string.match)(l_0_8, "[^.]+$")
  local l_0_34 = (string.match)(l_0_9, "[^.]+$")
  local l_0_35 = (string.match)(l_0_10, "[^.]+$")
  local l_0_36 = (string.match)(l_0_11, "[^.]+$")
  local l_0_37 = (string.match)(l_0_3, "[^.]+$")
  if l_0_31 == nil or l_0_32 == nil or l_0_33 == nil or l_0_34 == nil or l_0_35 == nil or l_0_36 == nil or l_0_37 == nil then
    return mp.CLEAN
  end
  if l_0_16 == l_0_17 and l_0_16 == l_0_18 and l_0_16 == l_0_31 and l_0_16 == l_0_32 and l_0_16 == l_0_33 and l_0_16 == l_0_34 and l_0_16 == l_0_35 and l_0_16 == l_0_36 and l_0_16 == l_0_37 then
    local l_0_38 = {}
    l_0_38.json = true
    l_0_38.node = true
    l_0_38["moz-backup"] = true
    l_0_38.html = true
    l_0_38.temp = true
    l_0_38.tmp1 = true
    l_0_38.deleteme = true
    l_0_38.ryuold = true
    l_0_38.old_version = true
    l_0_38["[Processing_failed]"] = true
    l_0_38.woff2 = true
    l_0_38.log2 = true
    l_0_38.compare = true
    l_0_38.delete = true
    l_0_38.backup = true
    l_0_38["(old)"] = true
    l_0_38["moz-delete"] = true
    l_0_38.old_copy = true
    l_0_38["~tmp"] = true
    if l_0_38[l_0_16] == true then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

