-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/63b358c5aa0c 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil then
    local l_0_7 = (string.lower)(l_0_6.image_path)
    if (mp.bitand)(l_0_6.reason_ex, 1) == 1 and ((string.find)(l_0_7, "\\program files (x86)\\", 1, true) or (string.find)(l_0_7, "\\program files\\", 1, true) or (string.find)(l_0_7, "\\winreseau.exe", 1, true)) then
      return mp.CLEAN
    end
  end
end
local l_0_8 = (string.lower)((bm.get_imagepath)())
if (string.find)(l_0_8, "\\program files\\", 1, true) or (string.find)(l_0_8, "\\program files (x86)\\", 1, true) or (string.find)(l_0_8, "\\putty.exe", 1, true) or (string.find)(l_0_8, "\\taputty.exe", 1, true) or (string.find)(l_0_8, "\\njlink.exe", 1, true) or (string.find)(l_0_8, "\\bmc", 1, true) or (string.find)(l_0_8, "\\ebarsoftware", 1, true) or (string.find)(l_0_8, "\\aethos", 1, true) or (string.find)(l_0_8, "\\aquasuite_rap", 1, true) or (string.find)(l_0_8, "\\runremote", 1, true) or (string.find)(l_0_8, "\\util\\bin\\ssh", 1, true) or (string.find)(l_0_8, "\\tightvnc", 1, true) then
  return mp.CLEAN
end
local l_0_9 = ""
if (this_sigattrlog[1]).matched then
  l_0_9 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched then
    l_0_9 = (this_sigattrlog[2]).utf8p2
  end
end
if l_0_9 ~= "" and (string.find)(l_0_9, " -pw ", 1, true) and (string.find)(l_0_9, " -P ", 1, true) and (string.find)(l_0_9, " -R ", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

