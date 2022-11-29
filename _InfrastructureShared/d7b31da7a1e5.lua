-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d7b31da7a1e5 

-- params : ...
-- function num : 0
local l_0_0 = false
if (this_sigattrlog[1]).matched then
  local l_0_1 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\sethc.exe")
  if l_0_1 ~= nil then
    local l_0_2 = (sysio.GetRegValueAsString)(l_0_1, "Debugger")
    if l_0_2 ~= nil and (string.len)(l_0_2) > 3 and (sysio.IsFileExists)(l_0_2) then
      (mp.ReportLowfi)(l_0_2, 203654752)
      l_0_0 = true
    end
  end
else
  do
    if (this_sigattrlog[2]).matched then
      local l_0_3 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\osk.exe")
      if l_0_3 ~= nil then
        local l_0_4 = (sysio.GetRegValueAsString)(l_0_3, "Debugger")
        if l_0_4 ~= nil and (string.len)(l_0_4) > 3 and (sysio.IsFileExists)(l_0_4) then
          (mp.ReportLowfi)(l_0_4, 2797521046)
          l_0_0 = true
        end
      end
    else
      do
        if (this_sigattrlog[3]).matched then
          local l_0_5 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\magnify.exe")
          if l_0_5 ~= nil then
            local l_0_6 = (sysio.GetRegValueAsString)(l_0_5, "Debugger")
            if l_0_6 ~= nil and (string.len)(l_0_6) > 3 and (sysio.IsFileExists)(l_0_6) then
              (mp.ReportLowfi)(l_0_6, 3633633013)
              l_0_0 = true
            end
          end
        else
          do
            if (this_sigattrlog[4]).matched then
              local l_0_7 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\utilman.exe")
              if l_0_7 ~= nil then
                local l_0_8 = (sysio.GetRegValueAsString)(l_0_7, "Debugger")
                if l_0_8 ~= nil and (string.len)(l_0_8) > 3 and (sysio.IsFileExists)(l_0_8) then
                  (mp.ReportLowfi)(l_0_8, 18635330)
                  l_0_0 = true
                end
              end
            else
              do
                if (this_sigattrlog[5]).matched then
                  local l_0_9 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\narrator.exe")
                  if l_0_9 ~= nil then
                    local l_0_10 = (sysio.GetRegValueAsString)(l_0_9, "Debugger")
                    if l_0_10 ~= nil and (string.len)(l_0_10) > 3 and (sysio.IsFileExists)(l_0_10) then
                      (mp.ReportLowfi)(l_0_10, 3440281147)
                      l_0_0 = true
                    end
                  end
                end
                do
                  if l_0_0 == true then
                    return mp.INFECTED
                  end
                  return mp.CLEAN
                end
              end
            end
          end
        end
      end
    end
  end
end

