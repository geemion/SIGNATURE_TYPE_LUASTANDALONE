-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/35b36d0d7f14 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = (bm.get_imagepath)()
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if (string.sub)(l_0_1, -12) == "explorer.exe" then
  return mp.CLEAN
else
  if (string.sub)(l_0_1, -10) ~= "cpufix.exe" and (string.sub)(l_0_1, -11) ~= "antiusb.exe" and (string.sub)(l_0_1, -12) ~= "streamer.exe" and (string.sub)(l_0_1, -13) ~= "radnewage.exe" and (string.sub)(l_0_1, -14) ~= "cpuchecker.exe" and (string.sub)(l_0_1, -19) ~= "winddowsupdater.exe" then
    l_0_0 = true
  end
end
local l_0_2 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  l_0_2 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p1))
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    l_0_2 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1))
  else
    return mp.CLEAN
  end
end
local l_0_3 = {}
local l_0_4 = 0
for l_0_8 in (string.gmatch)(l_0_2, "[^\\]+") do
  l_0_4 = l_0_4 + 1
  l_0_3[l_0_4] = l_0_8
end
if #l_0_3 >= 2 and (string.len)(l_0_3[#l_0_3]) == (string.len)(l_0_3[#l_0_3 - 1]) + 9 and (string.sub)(l_0_3[#l_0_3], 1, (string.len)(l_0_3[#l_0_3 - 1])) == l_0_3[#l_0_3 - 1] then
  if l_0_0 == true then
    (mp.ReportLowfi)(l_0_1, 4187849358)
  else
    return mp.INFECTED
  end
end
return mp.CLEAN

