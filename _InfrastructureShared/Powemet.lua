-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/Powemet 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
local l_0_2 = nil
if (sysio.RegOpenKey)((sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")) then
  local l_0_3 = nil
  for l_0_7,l_0_8 in pairs((sysio.RegEnumValues)((sysio.RegOpenKey)((sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")))) do
    local l_0_4 = nil
    -- DECOMPILER ERROR at PC23: Confused about usage of register: R8 in 'UnsetPending'

    l_0_1 = (string.lower)((sysio.GetRegValueAsString)(l_0_3, R8_PC23))
    if l_0_1 ~= nil then
      if (string.match)(l_0_1, "regsvr32.+/i%:http.+scrobj%.dll") and (string.find)(l_0_1, "/u ", 1, true) and (string.find)(l_0_1, "/s ", 1, true) then
        (sysio.DeleteRegValue)(l_0_3, R8_PC23)
      end
      if (string.find)(l_0_1, "powershell.exe", 1, true) and (string.match)(l_0_1, "iex%s*%(%[text%.encoding%]%:%:ascii%.getstring%(%[convert%]%:%:frombase64string%(%(gp%s*%\'hk") then
        (sysio.DeleteRegValue)(l_0_3, R8_PC23)
      end
    end
  end
end
do
  l_0_3 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run")
  if l_0_3 then
    local l_0_9 = (sysio.RegEnumValues)(l_0_3)
    for l_0_13,l_0_14 in pairs(l_0_9) do
      l_0_1 = (string.lower)((sysio.GetRegValueAsString)(l_0_3, l_0_14))
      if l_0_1 ~= nil then
        if (string.match)(l_0_1, "regsvr32.+/i%:http.+scrobj%.dll") and (string.find)(l_0_1, "/u ", 1, true) and (string.find)(l_0_1, "/s ", 1, true) then
          (sysio.DeleteRegValue)(l_0_3, l_0_14)
        end
        if (string.find)(l_0_1, "powershell.exe", 1, true) and (string.match)(l_0_1, "iex%s*%(%[text%.encoding%]%:%:ascii%.getstring%(%[convert%]%:%:frombase64string%(%(gp%s*%\'hk") then
          (sysio.DeleteRegValue)(l_0_3, l_0_14)
        end
      end
    end
  end
end

