-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/Gamarue_Includes_GenericRepairHelpers 

-- params : ...
-- function num : 0
isgamformat = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = (string.find)(l_1_0:reverse(), "\\", 1, true)
  if l_1_1 == nil then
    return false, nil
  end
  local l_1_2 = #l_1_0 - l_1_1
  local l_1_3 = l_1_0:sub(l_1_2 + 2)
  local l_1_4 = {}
  l_1_4[".exe"] = ""
  l_1_4[".cmd"] = ""
  l_1_4[".bat"] = ""
  l_1_4[".com"] = ""
  l_1_4[".pif"] = ""
  l_1_4[".scr"] = ""
  local l_1_5 = {}
  l_1_5.ms = ""
  l_1_5.dx = ""
  l_1_5.cc = ""
  if l_1_5[l_1_3:sub(1, 2)] and l_1_4[l_1_3:sub(-4)] then
    return true, l_1_3
  end
  return false, nil
end

remgam = function(l_2_0, l_2_1)
  -- function num : 0_1
  if l_2_0 then
    local l_2_2 = (sysio.RegEnumValues)(l_2_0)
    for l_2_6,l_2_7 in pairs(l_2_2) do
      if (l_2_1 == true and l_2_7:find("^%d%d%d%d+$", 1, false)) or l_2_1 == false and l_2_7:find("Load", 1, true) then
        local l_2_8 = (sysio.GetRegValueAsString)(l_2_0, l_2_7)
        if l_2_8 ~= nil and l_2_8 ~= "" then
          local l_2_9, l_2_10 = isgamformat(l_2_8)
          if l_2_9 == true and l_2_10 ~= nil then
            if l_2_1 == true then
              (sysio.DeleteRegValue)(l_2_0, l_2_7)
            else
              ;
              (sysio.SetRegValueAsString)(l_2_0, "Load", "")
            end
            local l_2_11 = (MpCommon.ExpandEnvironmentVariables)("%allusersprofile%") .. "\\" .. l_2_10
            if (sysio.IsFileExists)(l_2_11) then
              (MpCommon.ReportLowfi)(l_2_11, 2852551133)
              ;
              (Remediation.BtrDeleteFile)(l_2_11)
            end
            l_2_11 = (MpCommon.ExpandEnvironmentVariables)("%allusersprofile%") .. "\\Local Settings\\Temp\\" .. l_2_10
            if (sysio.IsFileExists)(l_2_11) then
              (MpCommon.ReportLowfi)(l_2_11, 2852551133)
              ;
              (Remediation.BtrDeleteFile)(l_2_11)
            end
            l_2_11 = Infrastructure_GetEnvironmentPath("%appdata%") .. "\\" .. l_2_10
            if (sysio.IsFileExists)(l_2_11) then
              (MpCommon.ReportLowfi)(l_2_11, 2852551133)
              ;
              (Remediation.BtrDeleteFile)(l_2_11)
            end
            l_2_11 = Infrastructure_GetEnvironmentPath("%userprofile%") .. "\\AppData\\Local\\Temp\\" .. l_2_10
            if (sysio.IsFileExists)(l_2_11) then
              (MpCommon.ReportLowfi)(l_2_11, 2852551133)
              ;
              (Remediation.BtrDeleteFile)(l_2_11)
            end
          end
        end
      end
    end
  end
end

remplugin_added_registry = function()
  -- function num : 0_2
  local l_3_0 = (sysio.RegExpandUserKey)("HKCU\\Keyboard Layout")
  if l_3_0 then
    for l_3_4,l_3_5 in pairs(l_3_0) do
      local l_3_6 = (sysio.RegOpenKey)(l_3_5)
      if l_3_6 then
        (sysio.DeleteRegValue)(l_3_6, "1")
        ;
        (sysio.DeleteRegValue)(l_3_6, "2")
      end
    end
  end
end

remplug = function(l_4_0)
  -- function num : 0_3
  if l_4_0 then
    local l_4_1 = (sysio.RegEnumValues)(l_4_0)
    for l_4_5,l_4_6 in pairs(l_4_1) do
      if l_4_6 ~= nil and l_4_6:find("^%d%d%d%d+$", 1, false) then
        local l_4_7 = (sysio.GetRegValueAsString)(l_4_0, l_4_6)
        if l_4_7 ~= nil and l_4_7 ~= "" then
          (sysio.DeleteRegValue)(l_4_0, l_4_6)
        end
      end
    end
  end
end

remplugin_registry = function()
  -- function num : 0_4
  local l_5_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows")
  remplug(l_5_0)
  local l_5_1 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows")
  if l_5_1 then
    for l_5_5,l_5_6 in pairs(l_5_1) do
      local l_5_7 = (sysio.RegOpenKey)(l_5_6)
      remplug(l_5_7)
    end
  end
end

RemoveGamarueLnk = function(l_6_0)
  -- function num : 0_5
  if l_6_0:find("\\%w%.lnk$") == nil then
    return 
  end
  local l_6_1 = (sysio.GetFileSize)(l_6_0)
  if l_6_1 > 1024 or l_6_1 < 500 then
    return 
  end
  local l_6_2 = (sysio.ReadFileRaw)(l_6_0, 0, l_6_1)
  if l_6_2 == nil then
    return 
  end
  local l_6_3 = (string.gsub)(l_6_2, "%z", "")
  if l_6_3 == nil then
    return 
  end
  do
    if l_6_3:match("\\AppData\\Roaming\\(ii%w+%.exe)") == nil then
      local l_6_4 = l_6_3:match("\\AppData\\Roaming\\(ob%w+%.exe)")
    end
    -- DECOMPILER ERROR at PC42: Confused about usage of register: R4 in 'UnsetPending'

    if l_6_4 ~= nil then
      local l_6_5 = nil
      if l_6_0:match("^(%w:\\Users\\[^\\]+)\\") ~= nil then
        local l_6_6 = nil
        -- DECOMPILER ERROR at PC61: Confused about usage of register: R6 in 'UnsetPending'

        if (sysio.IsFileExists)(l_6_0:match("^(%w:\\Users\\[^\\]+)\\") .. "\\AppData\\Roaming\\" .. l_6_5) then
          (MpCommon.ReportLowfi)(l_6_0:match("^(%w:\\Users\\[^\\]+)\\") .. "\\AppData\\Roaming\\" .. l_6_5, 2852551133)
          -- DECOMPILER ERROR at PC66: Confused about usage of register: R6 in 'UnsetPending'

          ;
          (Remediation.BtrDeleteFile)(l_6_0:match("^(%w:\\Users\\[^\\]+)\\") .. "\\AppData\\Roaming\\" .. l_6_5)
        end
        if (sysio.IsFileExists)(l_6_0) then
          (MpCommon.ReportLowfi)(l_6_0, 2852551133)
          ;
          (Remediation.BtrDeleteFile)(l_6_0)
        end
      end
    end
  end
end

RemoveStartupLnk = function()
  -- function num : 0_6
  local l_7_0 = nil
  local l_7_1 = nil
  for l_7_5,l_7_6 in pairs((sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Shell Folders")) do
    local l_7_2 = nil
    -- DECOMPILER ERROR at PC10: Confused about usage of register: R6 in 'UnsetPending'

    if (sysio.RegOpenKey)(R6_PC10) then
      l_7_1 = (sysio.GetRegValueAsString)((sysio.RegOpenKey)(R6_PC10), "Startup")
      if l_7_1 ~= nil and (sysio.IsFolderExists)(l_7_1) then
        local l_7_8 = nil
        for l_7_12,l_7_13 in pairs((sysio.FindFiles)(l_7_1, "*.lnk", 0)) do
          local l_7_9 = nil
          -- DECOMPILER ERROR at PC39: Confused about usage of register: R13 in 'UnsetPending'

          RemoveGamarueLnk(R13_PC39)
        end
      end
    end
  end
  -- DECOMPILER ERROR at PC45: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

RemoveFilesInRemDrives = function(l_8_0)
  -- function num : 0_7
  local l_8_1 = (sysio.FindFiles)(l_8_0, "*.lnk", 0)
  local l_8_2 = false
  for l_8_6,l_8_7 in pairs(l_8_1) do
    if ((string.lower)(l_8_7)):find("%(%d+gb%)%.lnk") ~= nil and (sysio.IsFileExists)(l_8_7) then
      l_8_2 = true
      ;
      (MpCommon.ReportLowfi)(l_8_7, 2852551133)
      ;
      (Remediation.BtrDeleteFile)(l_8_7)
    end
  end
  local l_8_8 = l_8_0 .. " "
  if l_8_2 and (sysio.IsFolderExists)(l_8_8) then
    local l_8_9 = (sysio.FindFiles)(l_8_8, "*", 0)
    for l_8_13,l_8_14 in pairs(l_8_9) do
      if (sysio.IsFileExists)(l_8_14) then
        (MpCommon.ReportLowfi)(l_8_14, 2852551133)
        ;
        (Remediation.BtrDeleteFile)(l_8_14)
      end
    end
    ;
    (Remediation.BtrDeleteFile)(l_8_8)
  end
end

CleanRemovableDrives = function()
  -- function num : 0_8
  local l_9_0, l_9_1, l_9_2, l_9_3 = Infrastructure_GetAvailableDrives()
  local l_9_4 = #l_9_1
  if l_9_4 > 0 then
    for l_9_8,l_9_9 in pairs(l_9_1) do
      RemoveFilesInRemDrives(l_9_9)
    end
  end
end

if (Remediation.Threat).Active then
  local l_0_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\Run")
  remgam(l_0_0, true)
  local l_0_1 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Windows")
  for l_0_5,l_0_6 in pairs(l_0_1) do
    local l_0_7 = (sysio.RegOpenKey)(l_0_6)
    remgam(l_0_7, false)
  end
  local l_0_8 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run")
  for l_0_12,l_0_13 in pairs(l_0_8) do
    local l_0_14 = (sysio.RegOpenKey)(l_0_13)
    remgam(l_0_14, true)
  end
  Infrastructure_EnableUAC()
  Infrastructure_EnableTaskbarNotification()
  Infrastructure_EnableActionCenterMessages()
  Infrastructure_EnableTaskManager()
  remplugin_registry()
  remplugin_added_registry()
  RemoveStartupLnk()
  CleanRemovableDrives()
end

