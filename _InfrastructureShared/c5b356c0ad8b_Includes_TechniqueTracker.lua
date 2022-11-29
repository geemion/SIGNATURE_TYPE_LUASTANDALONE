-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c5b356c0ad8b_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and ((string.find)(l_0_0, "windows\\explorer.exe", 1, true) or (string.find)(l_0_0, "\\system32\\svchost.exe", 1, true) or (string.find)(l_0_0, "\\syswow64\\svchost.exe", 1, true)) then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p2)
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
      l_0_1 = (string.lower)((this_sigattrlog[3]).utf8p2)
    else
      if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
        l_0_1 = (string.lower)((this_sigattrlog[4]).utf8p2)
      else
        if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
          l_0_1 = (string.lower)((this_sigattrlog[5]).utf8p2)
        else
          if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
            l_0_1 = (string.lower)((this_sigattrlog[6]).utf8p2)
          else
            if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p2 ~= nil then
              l_0_1 = (string.lower)((this_sigattrlog[7]).utf8p2)
            end
          end
        end
      end
    end
  end
end
if (string.len)(l_0_1) < 4 then
  return mp.CLEAN
end
if (string.find)(l_0_1, "%1", 1, true) then
  return mp.CLEAN
else
  if (string.find)(l_0_1, "cmd.exe", 1, true) or (string.find)(l_0_1, "cmd ", 1, true) or (string.find)(l_0_1, "powershell", 1, true) or (string.find)(l_0_1, "schtasks", 1, true) or (string.find)(l_0_1, "cscript", 1, true) or (string.find)(l_0_1, "wscript", 1, true) or (string.find)(l_0_1, "mshta", 1, true) or (string.find)(l_0_1, "reg add", 1, true) or (string.find)(l_0_1, "reg.exe add", 1, true) or (string.find)(l_0_1, "regedit.exe", 1, true) or (string.find)(l_0_1, "bypass", 1, true) or (string.find)(l_0_1, "\\appdata\\roaming\\", 1, true) or (string.find)(l_0_1, "\\appdata\\local\\", 1, true) or (string.find)(l_0_1, "\\users\\public\\", 1, true) or (string.find)(l_0_1, "\\programdata\\", 1, true) or (string.find)(l_0_1, "vssadmin.exe", 1, true) or (string.find)(l_0_1, "%.bat$") or (string.find)(l_0_1, "%.cmd$") or (string.find)(l_0_1, "%.js$") or (string.find)(l_0_1, "%.vbs$") or (string.find)(l_0_1, "%.wsf$") then
    TrackPidAndTechniqueBM("BM", "T1548.002", "uac_bypass_src")
    return mp.INFECTED
  end
end
return mp.CLEAN

