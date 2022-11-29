-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/90b34f2fd92b_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil and (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_2 = (string.lower)((this_sigattrlog[2]).utf8p2)
  local l_0_3 = (string.match)(l_0_0, "\\classes\\(.+)\\shell")
  if l_0_2 ~= l_0_3 then
    return mp.CLEAN
  end
  if (string.len)(l_0_1) < 4 then
    return mp.CLEAN
  end
  if (string.find)(l_0_1, "%1", 1, true) then
    return mp.CLEAN
  else
    if (string.find)(l_0_1, "cmd.exe", 1, true) or (string.find)(l_0_1, "cmd ", 1, true) or (string.find)(l_0_1, "powershell", 1, true) or (string.find)(l_0_1, "schtasks", 1, true) or (string.find)(l_0_1, "cscript", 1, true) or (string.find)(l_0_1, "wscript", 1, true) or (string.find)(l_0_1, "mshta", 1, true) or (string.find)(l_0_1, "reg add", 1, true) or (string.find)(l_0_1, "reg.exe add", 1, true) or (string.find)(l_0_1, "regedit.exe", 1, true) or (string.find)(l_0_1, "bypass", 1, true) or (string.find)(l_0_1, "\\appdata\\roaming\\", 1, true) or (string.find)(l_0_1, "\\appdata\\local\\", 1, true) or (string.find)(l_0_1, "\\users\\public\\", 1, true) or (string.find)(l_0_1, "\\programdata\\", 1, true) or (string.find)(l_0_1, "%.bat$") or (string.find)(l_0_1, "%.cmd$") or (string.find)(l_0_1, "%.js$") or (string.find)(l_0_1, "%.vbs$") or (string.find)(l_0_1, "%.wsf$") then
      TrackPidAndTechniqueBM("BM", "T1548.002", "uac_bypass_src")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

