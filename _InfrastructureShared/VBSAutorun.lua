-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/VBSAutorun 

-- params : ...
-- function num : 0
local l_0_0 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion")
for l_0_4,l_0_5 in pairs(l_0_0) do
  local l_0_6 = l_0_5 .. "\\Run"
  local l_0_7 = (sysio.RegOpenKey)(l_0_6)
  if l_0_7 then
    local l_0_8 = (sysio.RegEnumValues)(l_0_7)
    for l_0_12,l_0_13 in pairs(l_0_8) do
      local l_0_14 = (sysio.GetRegValueAsString)(l_0_7, l_0_13)
      if l_0_14 ~= nil and ((string.match)((string.lower)(l_0_14), "^wscript%.exe.+temp.+%.vb[es]\"$") or (string.match)((string.lower)(l_0_14), "^wscript%.exe.+data.+%.vb[es]\"$")) then
        local l_0_15, l_0_16, l_0_17, l_0_18 = (string.find)(l_0_14, "\"([cC]%:\\.*\\(.+%.[vV][bB][eEsS]))\"")
        if (sysio.IsFileExists)(l_0_17) then
          (Remediation.BtrDeleteFile)(l_0_17)
        end
        local l_0_19 = 0
        local l_0_20 = l_0_5 .. "\\Explorer\\Shell Folders"
        local l_0_21 = (sysio.RegOpenKey)(l_0_20)
        if l_0_21 then
          local l_0_22 = (sysio.GetRegValueAsString)(l_0_21, "Startup")
          if (sysio.IsFolderExists)(l_0_22) then
            local l_0_23 = l_0_22 .. "\\" .. l_0_18
            if (sysio.IsFileExists)(l_0_23) then
              l_0_19 = 1
              ;
              (Remediation.BtrDeleteFile)(l_0_23)
            end
          end
        end
        do
          if l_0_19 == 1 then
            (sysio.DeleteRegValue)(l_0_7, l_0_13)
            local l_0_24 = "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Run\\\\" .. l_0_13
            ;
            (Remediation.BtrDeleteRegValue)(l_0_24)
          end
          do
            -- DECOMPILER ERROR at PC117: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC117: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC117: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
end
-- DECOMPILER ERROR at PC121: Confused about usage of register R3 for local variables in 'ReleaseLocals'


