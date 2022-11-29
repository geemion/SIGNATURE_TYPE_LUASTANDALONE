-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_SuspiciousFilename.B 

-- params : ...
-- function num : 0
is_suspicious_filename = function(l_1_0)
  -- function num : 0_0
  do
    local l_1_1 = (string.lower)(l_1_0)
    do return l_1_1 == "calc.exe" or l_1_1 == "cmd.exe" or l_1_1 == "conhost.exe" or l_1_1 == "csrss.exe" or l_1_1 == "dllhost.exe" or l_1_1 == "explorer.exe" or l_1_1 == "iexplore.exe" or l_1_1 == "lsass.exe" or l_1_1 == "msiexec.exe" or l_1_1 == "msnmsgr.exe" or l_1_1 == "msmpeng.exe" or l_1_1 == "notepad.exe" or l_1_1 == "rundll32.exe" or l_1_1 == "server.exe" or l_1_1 == "services.exe" or l_1_1 == "smss.exe" or l_1_1 == "svchost.exe" or l_1_1 == "system.exe" or l_1_1 == "taskhost.exe" or l_1_1 == "acrord32info.exe" or l_1_1 == "wininit.exe" or l_1_1 == "winlogon.exe" end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end

local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    if ((string.sub)(l_0_1, -17) == "\\application data" or (string.sub)(l_0_1, -16) == "\\appdata\\roaming") and is_suspicious_filename((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)) then
      (mp.set_mpattribute)("Lua:SuspiciousFilenameAppdata.A")
      return mp.INFECTED
    end
    if (string.sub)(l_0_1, -28) == "\\start menu\\programs\\startup" and is_suspicious_filename((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)) then
      (mp.set_mpattribute)("Lua:SuspiciousFilenameStartup.A")
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

