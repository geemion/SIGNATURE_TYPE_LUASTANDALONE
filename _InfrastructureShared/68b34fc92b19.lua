-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/68b34fc92b19 

-- params : ...
-- function num : 0
local l_0_0, l_0_3, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10 = nil
if (this_sigattrlog[1]).matched then
  local l_0_1 = nil
  local l_0_2 = nil
  if (string.match)((string.lower)((this_sigattrlog[1]).utf8p2), "%.exe%s(.+%.exe)%s") ~= nil and (string.len)((string.match)((string.lower)((this_sigattrlog[1]).utf8p2), "%.exe%s(.+%.exe)%s")) > 3 then
    l_0_1 = (string.match)((string.lower)((this_sigattrlog[1]).utf8p2), "%.exe%s(.+%.exe)%s")
  end
else
  do
    if (this_sigattrlog[2]).matched then
      local l_0_4 = nil
      local l_0_5 = nil
      if (string.match)((string.lower)((this_sigattrlog[2]).utf8p2), "%.exe%s\".-([^\\]-[^\\%.]+)\"%s") ~= nil and (string.len)((string.match)((string.lower)((this_sigattrlog[2]).utf8p2), "%.exe%s\".-([^\\]-[^\\%.]+)\"%s")) > 3 then
        l_0_4 = (string.match)((string.lower)((this_sigattrlog[2]).utf8p2), "%.exe%s\".-([^\\]-[^\\%.]+)\"%s")
      end
    end
    do
      -- DECOMPILER ERROR at PC51: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC55: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC61: Confused about usage of register: R0 in 'UnsetPending'

      if l_0_4 == nil or (string.len)(l_0_4) < 4 or (string.sub)(l_0_4, -4) ~= ".exe" then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC70: Confused about usage of register: R0 in 'UnsetPending'

      local l_0_11 = nil
      local l_0_12 = nil
      if (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_0_4) ~= nil then
        local l_0_13 = nil
        if (sysio.GetRegValueAsString)((sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_0_4), "Debugger") ~= nil and (string.len)((sysio.GetRegValueAsString)((sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_0_4), "Debugger")) >= 1 then
          if (sysio.IsFileExists)((sysio.GetRegValueAsString)((sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_0_4), "Debugger")) then
            (mp.ReportLowfi)((sysio.GetRegValueAsString)((sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_0_4), "Debugger"), 1806419140)
            ;
            (bm.add_related_file)((sysio.GetRegValueAsString)((sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_0_4), "Debugger"))
          else
            local l_0_14 = nil
            for l_0_18,l_0_19 in ipairs((mp.GetExecutablesFromCommandLine)((sysio.GetRegValueAsString)((sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_0_4), "Debugger"))) do
              local l_0_15 = nil
              -- DECOMPILER ERROR at PC115: Confused about usage of register: R9 in 'UnsetPending'

              if R9_PC115 ~= nil and (string.len)(R9_PC115) > 3 and (sysio.IsFileExists)(R9_PC115) then
                (mp.ReportLowfi)(R9_PC115, 1806419140)
                ;
                (bm.add_related_file)(R9_PC115)
              end
            end
          end
          do
            do
              do return mp.INFECTED end
              return mp.CLEAN
            end
          end
        end
      end
    end
  end
end

