-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7db32b08e9a0 

-- params : ...
-- function num : 0
if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p1 ~= nil then
  local l_0_0 = (bm.get_current_process_startup_info)()
  local l_0_1 = (string.lower)(l_0_0.command_line)
  if (string.find)(l_0_1, "chocolatey.", 1, true) or (string.find)(l_0_1, "-appxprovisioned", 1, true) or (string.find)(l_0_1, ".visualstudio.com", 1, true) or (string.find)(l_0_1, ".azure.com", 1, true) or (string.find)(l_0_1, "cloudtest", 1, true) or (string.find)(l_0_1, " -nologo ", 1, true) or (string.find)(l_0_1, " -noprofile ", 1, true) or (string.find)(l_0_1, "get-windowsoptionalfeature", 1, true) or (string.find)(l_0_1, "enableagent", 1, true) or (string.find)(l_0_1, "\\syncro\\", 1, true) or (string.find)(l_0_1, "\\program files", 1, true) then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((this_sigattrlog[6]).utf8p1)
  if (string.find)(l_0_2, "\\program files", 1, true) or (string.find)(l_0_2, "\\chocolatey", 1, true) or (string.find)(l_0_2, "\\dismhost.exe", 1, true) or (string.find)(l_0_2, "\\lgpo.exe", 1, true) then
    return mp.CLEAN
  end
  if (mp.IsKnownFriendlyFile)(l_0_2, true, false) == false then
    (bm.add_related_file)(l_0_2)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

