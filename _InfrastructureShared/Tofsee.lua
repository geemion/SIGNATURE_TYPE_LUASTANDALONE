-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/Tofsee 

-- params : ...
-- function num : 0
local l_0_0 = Remediation.Threat
if l_0_0.Active and (string.match)(l_0_0.Name, "Backdoor:Win32/Tofsee") then
  local l_0_1 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")
  for l_0_5,l_0_6 in pairs(l_0_1) do
    local l_0_7 = "msconfig"
    local l_0_8 = (sysio.RegOpenKey)(l_0_6)
    if l_0_8 ~= nil then
      local l_0_9 = (sysio.GetRegValueAsString)(l_0_8, l_0_7)
      if l_0_9 ~= nil and (string.match)(l_0_9, "\\%l%l%l%l%l%l%l%l.exe") then
        (sysio.DeleteRegValue)(l_0_8, l_0_7)
        if (string.byte)(l_0_9) == 34 then
          l_0_9 = (string.sub)(l_0_9, 2, -2)
        end
        ;
        (sysio.DeleteFile)(l_0_9)
      end
    end
  end
end

