-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/Crowti_Includes_GenericRepairHelpers 

-- params : ...
-- function num : 0
RemoveStartupFileCmpFileNameAndSize = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = nil
  local l_1_3 = nil
  for l_1_7,l_1_8 in pairs((sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Shell Folders")) do
    local l_1_4 = nil
    -- DECOMPILER ERROR at PC10: Confused about usage of register: R8 in 'UnsetPending'

    if (sysio.RegOpenKey)(R8_PC10) then
      l_1_3 = (sysio.GetRegValueAsString)((sysio.RegOpenKey)(R8_PC10), "Startup")
      if (sysio.IsFolderExists)(l_1_3) then
        local l_1_10 = nil
        -- DECOMPILER ERROR at PC38: Confused about usage of register: R10 in 'UnsetPending'

        -- DECOMPILER ERROR at PC44: Confused about usage of register: R10 in 'UnsetPending'

        if (sysio.IsFileExists)(l_1_3 .. "\\" .. l_1_0) and l_1_1 == (sysio.GetFileSize)(l_1_3 .. "\\" .. l_1_0) then
          (Remediation.BtrDeleteFile)(l_1_3 .. "\\" .. l_1_0)
        end
      end
    end
  end
end

CompareRegValueFileSizeAndRemove = function(l_2_0, l_2_1, l_2_2)
  -- function num : 0_1
  local l_2_3 = ((sysio.RegOpenKey)(l_2_0))
  local l_2_4 = nil
  if l_2_3 then
    local l_2_5 = (sysio.RegEnumValues)(l_2_3)
    for l_2_9,l_2_10 in pairs(l_2_5) do
      if l_2_10 then
        l_2_4 = (sysio.GetRegValueAsString)(l_2_3, l_2_10)
        if l_2_4 then
          l_2_4 = (string.lower)(l_2_4)
          if (sysio.IsFileExists)(l_2_4) and (string.find)(l_2_4, l_2_1, 1, true) and l_2_2 == (sysio.GetFileSize)(l_2_4) then
            (sysio.DeleteRegValue)(l_2_3, l_2_10)
            return true
          end
        end
      end
    end
  end
  do
    l_2_5 = false
    return l_2_5
  end
end

RemoveCrowtiASEPs = function(l_3_0, l_3_1, l_3_2)
  -- function num : 0_2
  if l_3_1 and l_3_2 > 256 then
    CompareRegValueFileSizeAndRemove("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Run", l_3_1, l_3_2)
    for l_3_6,l_3_7 in pairs(l_3_0) do
      CompareRegValueFileSizeAndRemove(l_3_7, l_3_1, l_3_2)
    end
    local l_3_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\RunOnce")
    for l_3_12,l_3_13 in pairs(l_3_8) do
      CompareRegValueFileSizeAndRemove(l_3_13, l_3_1, l_3_2)
    end
    RemoveStartupFileCmpFileNameAndSize(l_3_1, l_3_2)
  end
end

if (Remediation.Threat).Active then
  local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil, nil, nil, nil, nil
  local l_0_5 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")
  for l_0_9,l_0_10 in pairs(l_0_5) do
    l_0_0 = (sysio.RegOpenKey)(l_0_10)
    if l_0_0 then
      l_0_1 = (sysio.RegEnumValues)(l_0_0)
      for l_0_14,l_0_15 in pairs(l_0_1) do
        if l_0_15 then
          l_0_4 = (sysio.GetRegValueAsString)(l_0_0, l_0_15)
          if l_0_4 then
            local l_0_16, l_0_17 = (string.match)(l_0_4, "^%a:\\([0-9a-z]+)\\([0-9a-z]+)%.exe")
            if l_0_16 ~= nil and l_0_17 ~= nil and l_0_16 == l_0_17 then
              local l_0_18 = (string.len)(l_0_16)
              if l_0_18 >= 7 and l_0_18 <= 8 then
                l_0_2 = l_0_16 .. ".exe"
                ;
                (sysio.DeleteRegValue)(l_0_0, l_0_15)
                if (sysio.IsFileExists)(l_0_4) then
                  l_0_3 = (sysio.GetFileSize)(l_0_4)
                  ;
                  (Remediation.BtrDeleteFile)(l_0_4)
                  RemoveCrowtiASEPs(l_0_5, l_0_2, l_0_3)
                  ;
                  (MpCommon.ReportLowfi)(l_0_4, 2546441377)
                end
              end
            end
          end
        end
      end
    end
  end
end
do
  l_0_0 = function()
  -- function num : 0_3
  local l_4_0 = false
  local l_4_1 = true
  if Info.OSType and Info.OSType == "Server" then
    l_4_1 = false
  end
  local l_4_2 = (sysio.RegOpenKey)("HKLM\\SYSTEM")
  if l_4_2 then
    local l_4_3 = (sysio.RegEnumKeys)(l_4_2)
    if l_4_3 then
      for l_4_7,l_4_8 in pairs(l_4_3) do
        -- DECOMPILER ERROR at PC73: Unhandled construct in 'MakeBoolean' P3

        if (((((not (string.match)(l_4_8, "ControlSet%d%d%d") or (not Infrastructure_RepairServiceAtPath("wuauserv", l_4_8)) and Infrastructure_RepairServiceAtPath("BITS", l_4_8))) or not Infrastructure_RepairServiceAtPath("WerSvc", l_4_8))) and not l_4_1) or not Infrastructure_RepairServiceAtPath("wscsvc", l_4_8) then
          local l_4_9 = (sysio.RegOpenSubkey)(l_4_2, l_4_8 .. "\\services\\SharedAccess\\Parameters\\FirewallPolicy\\StandardProfile")
          if l_4_9 then
            (sysio.SetRegValueAsDword)(l_4_9, "EnableFirewall", 1)
          end
        end
      end
    end
  end
  do
    l_4_3 = Remediation
    l_4_3 = l_4_3.DefaultSpecialRegistry
    l_4_3("HKLM\\SOFTWARE\\Microsoft\\Security Center")
    l_4_3 = Infrastructure_EnableUAC
    l_4_3()
    l_4_3 = Infrastructure_EnableSystemRestore
    l_4_3()
    if l_4_0 then
      l_4_3 = Remediation
      l_4_3 = l_4_3.SetRebootRequired
      l_4_3()
    end
  end
end

  RepairServicesAndComponents = l_0_0
  l_0_0 = Remediation
  l_0_0 = l_0_0.Threat
  l_0_0 = l_0_0.Active
  if not l_0_0 then
    l_0_0 = string
    l_0_0 = l_0_0.match
    l_0_1 = Remediation
    l_0_1 = l_0_1.Threat
    l_0_1 = l_0_1.Name
    l_0_2 = "Ransom:Win32/Crowti"
    l_0_0 = l_0_0(l_0_1, l_0_2)
  end
  if l_0_0 then
    l_0_0 = RepairServicesAndComponents
    l_0_0()
  end
end

