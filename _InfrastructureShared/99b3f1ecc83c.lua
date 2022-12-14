-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/99b3f1ecc83c 

-- params : ...
-- function num : 0
getFirstChildPpid = function(l_1_0, l_1_1)
  -- function num : 0_0
  if l_1_0 == nil then
    return nil
  end
  local l_1_2 = true
  local l_1_3 = 0
  if l_1_1 ~= nil or (string.len)(l_1_1) > 0 then
    l_1_2 = false
    l_1_3 = (string.len)(l_1_1)
  end
  local l_1_4, l_1_5 = (bm.get_process_relationships)(l_1_0)
  if l_1_5 == nil or #l_1_5 < 1 or #l_1_5 > 4 then
    return nil
  end
  local l_1_6 = nil
  for l_1_10,l_1_11 in ipairs(l_1_5) do
    if (mp.bitand)(l_1_11.reason_ex, 1) == 1 and (l_1_2 == true or l_1_3 >= (string.len)(l_1_11.image_path) or (string.sub)(l_1_11.image_path, -l_1_3) == l_1_1) then
      l_1_6 = l_1_11.ppid
      break
    end
  end
  do
    return l_1_6
  end
end

local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_0 = (this_sigattrlog[1]).ppid
  l_0_1 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_0 = (this_sigattrlog[2]).ppid
    l_0_1 = (this_sigattrlog[2]).utf8p2
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
      l_0_0 = (this_sigattrlog[3]).ppid
      l_0_1 = (this_sigattrlog[3]).utf8p2
    end
  end
end
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_2 = getFirstChildPpid(l_0_0, "\\powershell.exe")
if l_0_2 == nil then
  return mp.CLEAN
end
if (this_sigattrlog[6]).matched == false then
  return mp.CLEAN
end
local l_0_3 = (this_sigattrlog[6]).ppid
if l_0_2 ~= l_0_3 then
  return mp.CLEAN
end
local l_0_4 = (mp.GetExecutablesFromCommandLine)(l_0_1)
local l_0_5 = {}
l_0_5[".xls"] = true
l_0_5[".doc"] = true
l_0_5[".ppt"] = true
l_0_5[".pps"] = true
l_0_5.docx = true
l_0_5.pptx = true
l_0_5.ppsx = true
l_0_5.xlsx = true
l_0_5[".rtf"] = true
l_0_5[".xml"] = true
l_0_5.dotx = true
l_0_5.dotm = true
l_0_5[".odt"] = true
l_0_5.xlsb = true
l_0_5.xltx = true
l_0_5.xltm = true
l_0_5.xlam = true
l_0_5[".xla"] = true
l_0_5.docm = true
l_0_5.xlsm = true
l_0_5.pptm = true
for l_0_9,l_0_10 in ipairs(l_0_4) do
  if (string.len)(l_0_10) > 4 and (sysio.IsFileExists)(l_0_10) then
    local l_0_11 = (string.sub)(l_0_10, -4)
    if l_0_5[l_0_11] and (mp.IsKnownFriendlyFile)(l_0_10, true, false) == false then
      (bm.add_threat_file)(l_0_10)
    end
  end
end
;
(bm.add_threat_process)(l_0_2)
local l_0_12 = (this_sigattrlog[6]).utf8p1
do
  if (sysio.IsFileExists)(l_0_12) then
    local l_0_13 = (mp.IsKnownFriendlyFile)(l_0_12, true, true)
    if l_0_13 == false then
      (bm.add_threat_file)(l_0_12)
      return mp.INFECTED
    else
      if l_0_13 == true then
        return mp.CLEAN
      end
    end
  end
  return mp.CLEAN
end

